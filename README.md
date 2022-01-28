# PWM-Speed control 230VAC/110VAC with 0-10VDC (isolated) 
This is a speed control for standard heating-pumps with single-phase-motor. I use this for my solar-heating-pump.

Specifiactions:
- Power 750W/230VAc / 350W/110VAC
- Speed controlled by DC 0-12V (galvanically isolated)

You need:
- solder-construction-kit Velleman K8064 (https://www.velleman.eu/support/downloads/?code=K8064) 15€
- Microchip Programmer for USB like Dolla Tek K150 ICSP PIC 13€
- Microchip MPLAB -Free Download (https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)

## WARNING - you are now working with potentially deadly electrical power !!! 
### Stop working if you are not familar with the safety rules and better forget this repository.  

After soldering and testing the dimmer-modul you can flash the 16F676 - PIC-controller with this new software. The dimmer module does not have to be changed. This software uses the IRQ- Input on zero-crossing of supply voltage. The triac is only switched so you get a PWM-Signal with full sinus-waves.

## The used PIN's of 16F676 at K8064:
- PIN13   = RA0     Input->   Interrupt-trigger at zero-crossing of sinus voltage
- PIN10   = RC0     Output->  Ignition the Triac
- PIN 6   = RA4     Output->  LED - green
- PIN 5   = RA5     Output->  LED - red
- PIN 7   = RC3     Input->   JP 1
- PIN 8   = RC2     Input->   JP 2

## Configuration Hardware:
- LED - green     0-12VDC Input signal adjust (blink-slow=low range / blink-fast=high range)
- LED -red        Boost sequence at start

- JP 1            Closed = simplePWM (Standard PWM- compact ON/OFF packets)     / Open = smartPWM with spreading ON/OFF sinuses (less oscilation on low speed)
- JP 2            Closed = PWM with set speed                                   / Open = Starting with 100% (Boost) and ramp down to set speed (more reliable)

For poti look description of manufacturer:
- RV1 = Offset
- RV2 = Span

Fine tuning in software main.c:
- PWM_MIN 75    = Min. PWM-ON-Signal (75%)
