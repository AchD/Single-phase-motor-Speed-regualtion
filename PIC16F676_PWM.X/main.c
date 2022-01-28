/*
 * File:    main.c
 * Author:  Achim Diedrichs
 * Email:   achimd@mail.de
 * 
 * Vellemann K8064 für Umwälzpumpe
 * JP1 - open = open = smartPWM / closed = simplePWM
 * JP2 - open = open = Boost Start / closed = static Start
 * LED GN = Blinking to Input 0-12V
 * LED RD = Boost Start
 * Created on 31. Dezember 2021, 16:17
 */

#include <xc.h>
#include "parameter.h"          //Parametrierung PIC-Controller
#include "tools.h"

//Regelparameter
#define ANALOG_OFFSET 500   // Untergrenze 0% Stellwert
#define ANALOG_SPAN 800     // Obergrenze 100% Stellwert
#define PWM_SINE 100        // PWM Signallänge der Sinunsschwingung
#define PWM_MIN 75          // Minimaler PWM Wert in %
#define BOOST_RAMP 20       // Boost Rampensteilheit
#define BOOST_START 100     // Boost Startwert

#define LED_MIN 20          //LED mindestens 5 Hlabwellen Ein

int ZeroX, EinX, irqPin, SetPoint, GetPoint, Boost, gnLED;
unsigned int Triac;

void main(void) {
    ANSEL=CFG_ANSEL;    //Analogeingänge
    ADCON0=CFG_ADCON0;  //Analog Kontrollregister
    ADCON1=CFG_ADCON1;  //Analog Kontrollregister        
    CMCON=CFG_CMCON;    //Comparatoreingägne
    TRISC=CFG_TRISC;    //PortC 
    TRISA=CFG_TRISA;    //PortA
    IOCA=CFG_IOCA;      //Interupt OnChange
    INTCON=CFG_INTCON;  //Interrupts
    //---------------------------------
    ZeroX=0;    //Nulldurchgang Zähler löschen
    EinX=0;     //Nulldurchgang mit Triac löschen
    //-------- JP2 = BOOST ------------
    if (IN_JP2) {
        Boost = BOOST_START;    //Start mit Boost
        SetPoint = Boost;
        OUT_LED_RD = 1;
    }  else {
        Boost = 0;              //Start ohne Boost
        SetPoint = readADC();   //Analogen Stellwert 0..100% einlesen
        gnLED = (SetPoint * PWM_SINE) / 100;
        SetPoint = PWM_MIN + ((SetPoint*(100-PWM_MIN))/100);
    }
    //---------------------------------
    while (1) {
        //Regelzyklus Halbwellen
        if (ZeroX >= PWM_SINE) {
            ZeroX=0;    //Nulldurchgang Zähler löschen
            EinX=0;     //Nulldurchgang mit Triac löschen
            SetPoint = readADC();   //Analogen Stellwert 0..100% einlesen
            gnLED = (SetPoint * PWM_SINE) / 100;
            //-------- PWM - Min --------------
            SetPoint = PWM_MIN + ((SetPoint*(100-PWM_MIN))/100);
            //-------- JP2 = BOOST ------------
            if (IN_JP2) {
                if (Boost > SetPoint) {
                    SetPoint = Boost;
                    Boost-=BOOST_RAMP;
                    OUT_LED_RD = 1;
                } else {
                    Boost = 0;
                    OUT_LED_RD = 0;
                }
                if (Boost < 0) {
                    Boost=0;
                }
            } else {
                Boost = 0;
            }
        }
        //-------- LED - Grün -------------
        if ((gnLED < LED_MIN) & (gnLED > 0)) {
            gnLED = LED_MIN;
        } else if ((gnLED > (100-LED_MIN)) & (gnLED < 100)) {
            gnLED = 100 - LED_MIN;
        }
        if (ZeroX >= gnLED) {
            OUT_LED_GN = 0;
        } else {
            OUT_LED_GN = 1;
        }
        //-------- JP1 = PWM - MODUS ------------
        if (!IN_JP1) {
            //PWM - Modus = Standard
            GetPoint = (SetPoint * PWM_SINE) / 100;  //Pulsweite berechnen
            if (ZeroX >= GetPoint) {
                BIT_RESET(Triac, 0);  //Triac bei nächsten Nulldurchgang löschen
            }  else {
                BIT_SET(Triac, 0);    //Triac bei nächsten Nulldurchgang setzen
            }  
        } else {
            //PWM - Modus = Verteilt
            if (ZeroX > 0) {
                GetPoint = ((EinX*100)/ZeroX);
                if ((GetPoint > SetPoint) | (SetPoint == 0)) {
                    BIT_RESET(Triac, 0);  //Triac bei nächsten Nulldurchgang löschen
                } else {
                    BIT_SET(Triac, 0);    //Triac bei nächsten Nulldurchgang setzen
                }
            } else {
                if (SetPoint > 0) {
                    BIT_SET(Triac, 0); //Triac bei nächsten Nulldurchgang setzen
                } else {
                    BIT_RESET(Triac, 0);  //Triac bei nächsten Nulldurchgang löschen
                }
            }
        }  
    }    
    return;
}

int readADC() {
    //Analogwert einlesen
    unsigned long int Analog;
    GO = 1;                 //ADC Wandler starten
    while (GO) continue;    //ADC Wandlung abwarten
    Analog=BYTE2WORD(ADRESL, ADRESH);
    if (Analog <= ANALOG_OFFSET) {
        Analog = 0;
    } else if (Analog >= ANALOG_SPAN) {
        Analog = ANALOG_SPAN - ANALOG_OFFSET;
    } else {
        Analog = Analog - ANALOG_OFFSET;
    }
    Analog = (Analog * 100)/(ANALOG_SPAN - ANALOG_OFFSET);
    return Analog;
}

__interrupt() void interruptOnChangeIsr(void) {
    irqPin = IN_IRQ_ZERO_X;  //Interrupteingang OnChange lesen/rücksetzen
    //Interrupt OnChange bei Nulldurchgang der Sinuswelle
    if (RAIF && RAIE) {
        RAIF=0;         //Interruptflag löschen
        OUT_TRIAC=BIT_READ(Triac, 0);      //Triac im Nulldurchgang schalten
        ++ZeroX;        //Nulldurchgang zählen
        if (BIT_READ(Triac, 0)) {
            ++EinX;     //Nulldurchgang mit Triac zählen
        }
    }
}
