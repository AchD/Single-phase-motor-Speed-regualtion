/*  Parametrierung
 * ----------------
 *  Controller: PIC 16F676
 *  Board: Vellemann K8064
 */

// PIC16F676 Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator 
//#pragma config FOSC = INTRCIO
#pragma config WDTE = OFF       // Watchdog Timer Enable bit 
#pragma config PWRTE = OFF      // Power-up Timer Enable bit 
#pragma config MCLRE = ON       // RA3/MCLR pin function select 
#pragma config BOREN = OFF      // Brown-out Detect Enable bit 
#pragma config CP = OFF         // Code Protection bit 
#pragma config CPD = OFF        // Data Code Protection bit (
#define _XTAL_FREQ 20000000
// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

//Controller Parameter
// ---------- Analog -------------
#define CFG_ANSEL 0x20  // ANSEL - Analogeingang AN5 aktivieren
/* |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
 * | ANS7| ANS6| ANS5| ANS4| ANS3| ANS2| ANS1| ANS0|
 * -------------------------------------------------
 * |  0  |  0  |  1  |  0  |  0  |  0  |  0  |  0  | = 0x20 
 */
#define CFG_ADCON0 0x95  // ADCON0 - Channel 05 (AN5) + ADON = Ein
/* |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
 * | ADFM| VCFG|  -  | CHS2| CHS1| CHS0|  GO | ADON|
 * -------------------------------------------------
 * |  1  |  0  |  0  |  1  |  0  |  1  |  0  |  1  | = 0x95 
 */
#define CFG_ADCON1 0x10  // ADCON1 - ADC Zeit FOSC/4
/* |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
 * |  -  |ADCS2|ADCS1|ADCS0|  -  |  -  |  -  |  -  |
 * -------------------------------------------------
 * |  0  |  0  |  0  |  1  |  0  |  0  |  0  |  0  | = 0x10 
 */
// ---------- Comparator -------------
#define CFG_CMCON 0x07  // CMCON - Comparator Modus = OFF
/* |  7  |  6  |  5  |  4  |  3  |  2  |  1  |  0  |
 * |  -  | COUT|  -  | CINV| CIS | CM2 | CM1 | CM0 |
 * -------------------------------------------------
 * |  0  |  0  |  0  |  0  |  0  |  1  |  1  |  1  | = 0x07 
 */
// ---------- Ein/Ausgabe -------------
#define CFG_TRISC 0x0E  // TRISC - Eingang: RC1(AN5), RC2, RC3
/* |  7  |  6  |   5  |  4   |  3   |  2   |  1   |  0   |
 * |  -  |  -  |TRISC5|TRISC4|TRISC3|TRISC2|TRISC1|TRISC0|
 * -------------------------------------------------------
 * |  0  |  0  |  0   |  0   |  1   |  1   |  1   |  0   | = 0x0E 
 */
#define CFG_TRISA 0x01  // TRISA - Eingang: RA0
/* |  7  |  6  |   5  |  4   |  3   |  2   |  1   |  0   |
 * |  -  |  -  |TRISA5|TRISA4|TRISA3|TRISA2|TRISA1|TRISA0|
 * -------------------------------------------------------
 * |  0  |  0  |  0   |  0   |  0   |  0   |  0   |  1   | = 0x01 
 */
// ---------- Interrupt -------------
#define CFG_IOCA 0x01  // IOCA - Interrupt ON Change RA0
/* |  7  |  6  |   5 |  4  |  3  |  2  |  1  |  0  |
 * |  -  |  -  |IOCA5|IOCA4|IOCA3|IOCA2|IOCA1|IOCA0|
 * -------------------------------------------------
 * |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  1  | = 0x01 
 */
#define CFG_INTCON 0x88  // INTCON - Interupt aktivieren: Global + OnChangeIO
/* |  7  |  6  |   5 |  4  |  3  |  2  |  1  |  0  |
 * | GIE | PEIE| T0IE| INTE| RAIE| T0IF| INTF| RAIF|
 * -------------------------------------------------
 * |  1  |  0  |  0  |  0  |  1  |  0  |  0  |  0  | = 0x88 
 */

//IO- Konfiguration Board
#define IN_IRQ_ZERO_X RA0   // Intterupteingang (OnChange) bei Nulldurchgang
#define OUT_TRIAC RC0       // Ansteuerung Triac
#define OUT_LED_GN RC4      // LED Grün
#define OUT_LED_RD RC5      // LED Rot
#define IN_JP1 RC3          // JP1 - PWM Modus
#define IN_JP2 RC2          // JP2 - Boost