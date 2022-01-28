/*
 *  Tools für C
 */

#define BIT_READ(var, bitno)    (var & (1 << bitno))
#define BIT_RESET(var, bitno)   (var &= ~(1 << bitno))
#define BIT_SET(var, bitno)     (var |= 1 << bitno)
#define BYTE2WORD(low, high)    (low + (high<<8))
