# Single-phase-pump-speedregualtion
The current project is it, to refurbish my 15 years old solar heating system. By doing this i found out that a static running solar-heat-pump is out of date. It hard to find a cheap speed regulation for AC-single-phase-pumps. So I had to solve it by DIY.

My solution takes less than 30€ (including PIC-programmer) and it is a very reliable PWM- Speed Regulation for AC-single-phase-pumps up to 750W!

The adequtest thing i found to start with was a solder-construction-kit dimmer with a 0-12VDC control input. But you can not really use the phase controlled modulator for driving a single-phase-pump. The reason why i choose the Vellemann K8064 is the fact that this is equipped with a PIC- Controller 16F676. The manufacturer publishes the circuit-diagramms (https://www.velleman.eu/support/downloads/?code=K8064) and so you can see that the PIC- Controller gets an IRQ- Input on zero-crossing of supply voltage sinus.

(Please be patient with my programmin-style, this is my first project written in MPLab X IDE (v5.50) with PIC-Controler.)

The used PIN's of 16F676 at K8064:
- PIN13   = RA0     Input->   Interrupt-trigger at zero-crossing of sinus voltage
- PIN10   = RC0     Output->  Ignition the Triac
- PIN 6   = RA4     Output->  LED - green
- PIN 5   = RA5     Output->  LED - red
- PIN 7   = RC3     Input->   JP 1
- PIN 8   = RC2     Input->   JP 2

Configuration Hardware:
- LED - green     0-12VDC Input signal adjust (blink-slow=low range / blink-fast=high range)
- LED -red        Boost sequence at start

- JP 1            Closed = simplePWM (Standard PWM- compact ON/OFF packets)     / Open = smartPWM with spreading ON/OFF sinuses (less oscilation on low speed)
- JP 2            Closed = PWM with set speed                                   / Open = Starting with 100% (Boost) and ramp down to set speed (more reliable)

For poti look description of manufacturer.

Fine tuning in software main.c:
- PWM_MIN 75    = Min. PWM-ON-Signal (75%)
