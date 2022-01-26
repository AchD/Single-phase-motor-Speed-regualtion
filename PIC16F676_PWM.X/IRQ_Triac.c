/*
 * File:   main.c
 * Author: Achim
 * 
 * Interuppt on Change an RA0
 * RC4 = Triac aus Zylklus
 * RC5 = Triac bei Nulldurchgang
 *
 * Created on 31. Dezember 2021, 16:17
 */


// PIC16F676 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = INTRCIO   // Oscillator 
#pragma config WDTE = OFF       // Watchdog Timer Enable bit 
#pragma config PWRTE = OFF      // Power-up Timer Enable bit 
#pragma config MCLRE = OFF      // RA3/MCLR pin function select 
#pragma config BOREN = OFF       // Brown-out Detect Enable bit 
#pragma config CP = OFF         // Code Protection bit 
#pragma config CPD = OFF        // Data Code Protection bit (
#define _XTAL_FREQ 4000000
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#define BIT_READ(var, bitno)    (var & (1 << bitno))
#define BIT_RESET(var, bitno)   (var &= ~(1 << bitno))
#define BIT_SET(var, bitno)     (var |= 1 << bitno)

#include <xc.h>
#include <stdbool.h>

int ZeroX, old;
unsigned int Triac;

void main(void) {
    ANSEL=0x00;         //Analogeingänge
    CMCON=0x07;         //Comparatoreingägne
    TRISC=0x00;         //PortC 
    TRISA=0x01;         //PortA
    IOCA=0x01;          //Interupt OnChange
    INTCON=0x88;        //Interrupts
    Triac=0x00;
    while (1) {
        //Regelzyklus Neustart nach 50 Halbwellen
        if (ZeroX >= 9) {
            ZeroX=0;    //Nulldurchgang Zähler löschen
        }
        if (ZeroX >= 5) {
            BIT_RESET(Triac, 0);    //Triac bei nächsten Nulldurchgang löschen
        }  else {
            BIT_SET(Triac, 0);    //Triac bei nächsten Nulldurchgang löschen
        }  
        RC4=BIT_READ(Triac, 0);     
    }    
    return;
}

__interrupt() void interruptOnChangeIsr(void) {
    old = RA0;          //Interrupteingang OnChange lesen
    if (RAIF && RAIE) {
        RAIF=0;         //Interruptflag löschen
        RC5=BIT_READ(Triac, 0);      //Triac im Nulldurchgang schalten
        ++ZeroX;        //Nulldurchgang zählen
    }
}
