
# 1 "C:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\pic\__eeprom.c"

# 18 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 9 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\pic.h"
extern unsigned char __osccal_val(void);

# 52 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\proc\pic16f676.h"
extern volatile unsigned char INDF __at(0x000);

asm("INDF equ 00h");




extern volatile unsigned char TMR0 __at(0x001);

asm("TMR0 equ 01h");




extern volatile unsigned char PCL __at(0x002);

asm("PCL equ 02h");




extern volatile unsigned char STATUS __at(0x003);

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned RP :2;
unsigned IRP :1;
};
struct {
unsigned :5;
unsigned RP0 :1;
unsigned RP1 :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0x003);

# 159
extern volatile unsigned char FSR __at(0x004);

asm("FSR equ 04h");




extern volatile unsigned char PORTA __at(0x005);

asm("PORTA equ 05h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0x005);

# 216
extern volatile unsigned char PORTC __at(0x007);

asm("PORTC equ 07h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0x007);

# 266
extern volatile unsigned char PCLATH __at(0x00A);

asm("PCLATH equ 0Ah");


typedef union {
struct {
unsigned PCLATH :5;
};
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __at(0x00A);

# 286
extern volatile unsigned char INTCON __at(0x00B);

asm("INTCON equ 0Bh");


typedef union {
struct {
unsigned RAIF :1;
unsigned INTF :1;
unsigned T0IF :1;
unsigned RAIE :1;
unsigned INTE :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :2;
unsigned TMR0IF :1;
unsigned :2;
unsigned TMR0IE :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0x00B);

# 364
extern volatile unsigned char PIR1 __at(0x00C);

asm("PIR1 equ 0Ch");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned :2;
unsigned CMIF :1;
unsigned :2;
unsigned ADIF :1;
unsigned EEIF :1;
};
struct {
unsigned T1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0x00C);

# 412
extern volatile unsigned short TMR1 __at(0x00E);

asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __at(0x00E);

asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __at(0x00F);

asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __at(0x010);

asm("T1CON equ 010h");


typedef union {
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned TMR1GE :1;
};
struct {
unsigned :4;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0x010);

# 498
extern volatile unsigned char CMCON __at(0x019);

asm("CMCON equ 019h");


typedef union {
struct {
unsigned CM :3;
unsigned CIS :1;
unsigned CINV :1;
unsigned :1;
unsigned COUT :1;
};
struct {
unsigned CM0 :1;
unsigned CM1 :1;
unsigned CM2 :1;
};
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __at(0x019);

# 557
extern volatile unsigned char ADRESH __at(0x01E);

asm("ADRESH equ 01Eh");




extern volatile unsigned char ADCON0 __at(0x01F);

asm("ADCON0 equ 01Fh");


typedef union {
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned CHS :3;
unsigned :1;
unsigned VCFG :1;
unsigned ADFM :1;
};
struct {
unsigned :1;
unsigned GO :1;
unsigned CHS0 :1;
unsigned CHS1 :1;
unsigned CHS2 :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0x01F);

# 654
extern volatile unsigned char OPTION_REG __at(0x081);

asm("OPTION_REG equ 081h");


typedef union {
struct {
unsigned PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned INTEDG :1;
unsigned nRAPU :1;
};
struct {
unsigned PS0 :1;
unsigned PS1 :1;
unsigned PS2 :1;
unsigned :4;
unsigned nGPPU :1;
};
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __at(0x081);

# 731
extern volatile unsigned char TRISA __at(0x085);

asm("TRISA equ 085h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0x085);

# 781
extern volatile unsigned char TRISC __at(0x087);

asm("TRISC equ 087h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0x087);

# 831
extern volatile unsigned char PIE1 __at(0x08C);

asm("PIE1 equ 08Ch");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned :2;
unsigned CMIE :1;
unsigned :2;
unsigned ADIE :1;
unsigned EEIE :1;
};
struct {
unsigned T1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0x08C);

# 879
extern volatile unsigned char PCON __at(0x08E);

asm("PCON equ 08Eh");


typedef union {
struct {
unsigned nBOR :1;
unsigned nPOR :1;
};
struct {
unsigned nBOD :1;
};
} PCONbits_t;
extern volatile PCONbits_t PCONbits __at(0x08E);

# 913
extern volatile unsigned char OSCCAL __at(0x090);

asm("OSCCAL equ 090h");


typedef union {
struct {
unsigned :2;
unsigned CAL :6;
};
struct {
unsigned :2;
unsigned CAL0 :1;
unsigned CAL1 :1;
unsigned CAL2 :1;
unsigned CAL3 :1;
unsigned CAL4 :1;
unsigned CAL5 :1;
};
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __at(0x090);

# 973
extern volatile unsigned char ANSEL __at(0x091);

asm("ANSEL equ 091h");


typedef union {
struct {
unsigned ANS0 :1;
unsigned ANS1 :1;
unsigned ANS2 :1;
unsigned ANS3 :1;
unsigned ANS4 :1;
unsigned ANS5 :1;
unsigned ANS6 :1;
unsigned ANS7 :1;
};
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __at(0x091);

# 1035
extern volatile unsigned char WPUA __at(0x095);

asm("WPUA equ 095h");


extern volatile unsigned char WPU __at(0x095);

asm("WPU equ 095h");


typedef union {
struct {
unsigned WPUA0 :1;
unsigned WPUA1 :1;
unsigned WPUA2 :1;
unsigned :1;
unsigned WPUA4 :1;
unsigned WPUA5 :1;
};
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __at(0x095);

# 1083
typedef union {
struct {
unsigned WPUA0 :1;
unsigned WPUA1 :1;
unsigned WPUA2 :1;
unsigned :1;
unsigned WPUA4 :1;
unsigned WPUA5 :1;
};
} WPUbits_t;
extern volatile WPUbits_t WPUbits __at(0x095);

# 1123
extern volatile unsigned char IOCA __at(0x096);

asm("IOCA equ 096h");


extern volatile unsigned char IOC __at(0x096);

asm("IOC equ 096h");


typedef union {
struct {
unsigned IOCA0 :1;
unsigned IOCA1 :1;
unsigned IOCA2 :1;
unsigned IOCA3 :1;
unsigned IOCA4 :1;
unsigned IOCA5 :1;
};
} IOCAbits_t;
extern volatile IOCAbits_t IOCAbits __at(0x096);

# 1176
typedef union {
struct {
unsigned IOCA0 :1;
unsigned IOCA1 :1;
unsigned IOCA2 :1;
unsigned IOCA3 :1;
unsigned IOCA4 :1;
unsigned IOCA5 :1;
};
} IOCbits_t;
extern volatile IOCbits_t IOCbits __at(0x096);

# 1221
extern volatile unsigned char VRCON __at(0x099);

asm("VRCON equ 099h");


typedef union {
struct {
unsigned VR :4;
unsigned :1;
unsigned VRR :1;
unsigned :1;
unsigned VREN :1;
};
struct {
unsigned VR0 :1;
unsigned VR1 :1;
unsigned VR2 :1;
unsigned VR3 :1;
};
} VRCONbits_t;
extern volatile VRCONbits_t VRCONbits __at(0x099);

# 1281
extern volatile unsigned char EEDAT __at(0x09A);

asm("EEDAT equ 09Ah");


extern volatile unsigned char EEDATA __at(0x09A);

asm("EEDATA equ 09Ah");


typedef union {
struct {
unsigned EEDAT :8;
};
} EEDATbits_t;
extern volatile EEDATbits_t EEDATbits __at(0x09A);

# 1304
typedef union {
struct {
unsigned EEDAT :8;
};
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __at(0x09A);

# 1319
extern volatile unsigned char EEADR __at(0x09B);

asm("EEADR equ 09Bh");




extern volatile unsigned char EECON1 __at(0x09C);

asm("EECON1 equ 09Ch");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0x09C);

# 1364
extern volatile unsigned char EECON2 __at(0x09D);

asm("EECON2 equ 09Dh");




extern volatile unsigned char ADRESL __at(0x09E);

asm("ADRESL equ 09Eh");




extern volatile unsigned char ADCON1 __at(0x09F);

asm("ADCON1 equ 09Fh");


typedef union {
struct {
unsigned :4;
unsigned ADCS :3;
};
struct {
unsigned :4;
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0x09F);

# 1426
extern volatile __bit ADCS0 __at(0x4FC);


extern volatile __bit ADCS1 __at(0x4FD);


extern volatile __bit ADCS2 __at(0x4FE);


extern volatile __bit ADFM __at(0xFF);


extern volatile __bit ADIE __at(0x466);


extern volatile __bit ADIF __at(0x66);


extern volatile __bit ADON __at(0xF8);


extern volatile __bit ANS0 __at(0x488);


extern volatile __bit ANS1 __at(0x489);


extern volatile __bit ANS2 __at(0x48A);


extern volatile __bit ANS3 __at(0x48B);


extern volatile __bit ANS4 __at(0x48C);


extern volatile __bit ANS5 __at(0x48D);


extern volatile __bit ANS6 __at(0x48E);


extern volatile __bit ANS7 __at(0x48F);


extern volatile __bit CAL0 __at(0x482);


extern volatile __bit CAL1 __at(0x483);


extern volatile __bit CAL2 __at(0x484);


extern volatile __bit CAL3 __at(0x485);


extern volatile __bit CAL4 __at(0x486);


extern volatile __bit CAL5 __at(0x487);


extern volatile __bit CARRY __at(0x18);


extern volatile __bit CHS0 __at(0xFA);


extern volatile __bit CHS1 __at(0xFB);


extern volatile __bit CHS2 __at(0xFC);


extern volatile __bit CINV __at(0xCC);


extern volatile __bit CIS __at(0xCB);


extern volatile __bit CM0 __at(0xC8);


extern volatile __bit CM1 __at(0xC9);


extern volatile __bit CM2 __at(0xCA);


extern volatile __bit CMIE __at(0x463);


extern volatile __bit CMIF __at(0x63);


extern volatile __bit COUT __at(0xCE);


extern volatile __bit DC __at(0x19);


extern volatile __bit EEIE __at(0x467);


extern volatile __bit EEIF __at(0x67);


extern volatile __bit GIE __at(0x5F);


extern volatile __bit GO __at(0xF9);


extern volatile __bit GO_DONE __at(0xF9);


extern volatile __bit GO_nDONE __at(0xF9);


extern volatile __bit INTE __at(0x5C);


extern volatile __bit INTEDG __at(0x40E);


extern volatile __bit INTF __at(0x59);


extern volatile __bit IOCA0 __at(0x4B0);


extern volatile __bit IOCA1 __at(0x4B1);


extern volatile __bit IOCA2 __at(0x4B2);


extern volatile __bit IOCA3 __at(0x4B3);


extern volatile __bit IOCA4 __at(0x4B4);


extern volatile __bit IOCA5 __at(0x4B5);


extern volatile __bit IRP __at(0x1F);


extern volatile __bit PEIE __at(0x5E);


extern volatile __bit PS0 __at(0x408);


extern volatile __bit PS1 __at(0x409);


extern volatile __bit PS2 __at(0x40A);


extern volatile __bit PSA __at(0x40B);


extern volatile __bit RA0 __at(0x28);


extern volatile __bit RA1 __at(0x29);


extern volatile __bit RA2 __at(0x2A);


extern volatile __bit RA3 __at(0x2B);


extern volatile __bit RA4 __at(0x2C);


extern volatile __bit RA5 __at(0x2D);


extern volatile __bit RAIE __at(0x5B);


extern volatile __bit RAIF __at(0x58);


extern volatile __bit RC0 __at(0x38);


extern volatile __bit RC1 __at(0x39);


extern volatile __bit RC2 __at(0x3A);


extern volatile __bit RC3 __at(0x3B);


extern volatile __bit RC4 __at(0x3C);


extern volatile __bit RC5 __at(0x3D);


extern volatile __bit RD __at(0x4E0);


extern volatile __bit RP0 __at(0x1D);


extern volatile __bit RP1 __at(0x1E);


extern volatile __bit T0CS __at(0x40D);


extern volatile __bit T0IE __at(0x5D);


extern volatile __bit T0IF __at(0x5A);


extern volatile __bit T0SE __at(0x40C);


extern volatile __bit T1CKPS0 __at(0x84);


extern volatile __bit T1CKPS1 __at(0x85);


extern volatile __bit T1IE __at(0x460);


extern volatile __bit T1IF __at(0x60);


extern volatile __bit T1OSCEN __at(0x83);


extern volatile __bit TMR0IE __at(0x5D);


extern volatile __bit TMR0IF __at(0x5A);


extern volatile __bit TMR1CS __at(0x81);


extern volatile __bit TMR1GE __at(0x86);


extern volatile __bit TMR1IE __at(0x460);


extern volatile __bit TMR1IF __at(0x60);


extern volatile __bit TMR1ON __at(0x80);


extern volatile __bit TRISA0 __at(0x428);


extern volatile __bit TRISA1 __at(0x429);


extern volatile __bit TRISA2 __at(0x42A);


extern volatile __bit TRISA3 __at(0x42B);


extern volatile __bit TRISA4 __at(0x42C);


extern volatile __bit TRISA5 __at(0x42D);


extern volatile __bit TRISC0 __at(0x438);


extern volatile __bit TRISC1 __at(0x439);


extern volatile __bit TRISC2 __at(0x43A);


extern volatile __bit TRISC3 __at(0x43B);


extern volatile __bit TRISC4 __at(0x43C);


extern volatile __bit TRISC5 __at(0x43D);


extern volatile __bit VCFG __at(0xFE);


extern volatile __bit VR0 __at(0x4C8);


extern volatile __bit VR1 __at(0x4C9);


extern volatile __bit VR2 __at(0x4CA);


extern volatile __bit VR3 __at(0x4CB);


extern volatile __bit VREN __at(0x4CF);


extern volatile __bit VRR __at(0x4CD);


extern volatile __bit WPUA0 __at(0x4A8);


extern volatile __bit WPUA1 __at(0x4A9);


extern volatile __bit WPUA2 __at(0x4AA);


extern volatile __bit WPUA4 __at(0x4AC);


extern volatile __bit WPUA5 __at(0x4AD);


extern volatile __bit WR __at(0x4E1);


extern volatile __bit WREN __at(0x4E2);


extern volatile __bit WRERR __at(0x4E3);


extern volatile __bit ZERO __at(0x1A);


extern volatile __bit nBOD __at(0x470);


extern volatile __bit nBOR __at(0x470);


extern volatile __bit nDONE __at(0xF9);


extern volatile __bit nGPPU __at(0x40F);


extern volatile __bit nPD __at(0x1B);


extern volatile __bit nPOR __at(0x471);


extern volatile __bit nRAPU __at(0x40F);


extern volatile __bit nT1SYNC __at(0x82);


extern volatile __bit nTO __at(0x1C);


# 30 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);

# 78
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);

# 114 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\eeprom_routines.h"
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);


# 91 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\pic\include\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);

# 137
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;

# 5 "C:\Program Files\Microchip\xc8\v2.32\pic\sources\c90\pic\__eeprom.c"
void
__eecpymem(volatile unsigned char *to, __eeprom unsigned char * from, unsigned char size)
{
volatile unsigned char *cp = to;

while (EECON1bits.WR) continue;
EEADR = (unsigned char)from;
while(size--) {
while (EECON1bits.WR) continue;

EECON1 &= 0x7F;

EECON1bits.RD = 1;
*cp++ = EEDATA;
++EEADR;
}

# 36
}

void
__memcpyee(__eeprom unsigned char * to, const unsigned char *from, unsigned char size)
{
const unsigned char *ptr =from;

while (EECON1bits.WR) continue;
EEADR = (unsigned char)to - 1U;

EECON1 &= 0x7F;

while(size--) {
while (EECON1bits.WR) {
continue;
}
EEDATA = *ptr++;
++EEADR;
STATUSbits.CARRY = 0;
if (INTCONbits.GIE) {
STATUSbits.CARRY = 1;
}
INTCONbits.GIE = 0;
EECON1bits.WREN = 1;
EECON2 = 0x55;
EECON2 = 0xAA;
EECON1bits.WR = 1;
EECON1bits.WREN = 0;
if (STATUSbits.CARRY) {
INTCONbits.GIE = 1;
}
}

# 101
}

unsigned char
__eetoc(__eeprom void *addr)
{
unsigned char data;
__eecpymem((unsigned char *) &data,addr,1);
return data;
}

unsigned int
__eetoi(__eeprom void *addr)
{
unsigned int data;
__eecpymem((unsigned char *) &data,addr,2);
return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__eetom(__eeprom void *addr)
{
__uint24 data;
__eecpymem((unsigned char *) &data,addr,3);
return data;
}
#pragma warning pop

unsigned long
__eetol(__eeprom void *addr)
{
unsigned long data;
__eecpymem((unsigned char *) &data,addr,4);
return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__eetoo(__eeprom void *addr)
{
unsigned long long data;
__eecpymem((unsigned char *) &data,addr,8);
return data;
}
#pragma warning pop

unsigned char
__ctoee(__eeprom void *addr, unsigned char data)
{
__memcpyee(addr,(unsigned char *) &data,1);
return data;
}

unsigned int
__itoee(__eeprom void *addr, unsigned int data)
{
__memcpyee(addr,(unsigned char *) &data,2);
return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__mtoee(__eeprom void *addr, __uint24 data)
{
__memcpyee(addr,(unsigned char *) &data,3);
return data;
}
#pragma warning pop

unsigned long
__ltoee(__eeprom void *addr, unsigned long data)
{
__memcpyee(addr,(unsigned char *) &data,4);
return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__otoee(__eeprom void *addr, unsigned long long data)
{
__memcpyee(addr,(unsigned char *) &data,8);
return data;
}
#pragma warning pop

float
__eetoft(__eeprom void *addr)
{
float data;
__eecpymem((unsigned char *) &data,addr,3);
return data;
}

double
__eetofl(__eeprom void *addr)
{
double data;
__eecpymem((unsigned char *) &data,addr,4);
return data;
}

float
__fttoee(__eeprom void *addr, float data)
{
__memcpyee(addr,(unsigned char *) &data,3);
return data;
}

double
__fltoee(__eeprom void *addr, double data)
{
__memcpyee(addr,(unsigned char *) &data,4);
return data;
}

