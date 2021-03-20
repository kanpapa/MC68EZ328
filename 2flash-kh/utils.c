/**************************************************************************
* this software is free software released under the lesser LGPL license.
* As such, there is no warrenty of any kind nor fitness for use expressed
* in any way and user of the software accepts resposibilty for its use.
*
* Tom Walsh - (C)Mar 10, 2000 - tom@cyberiansoftware.com
**************************************************************************/

#include <asm/MC68EZ328.h>
#include <bootstrap.h>
#ifndef BOOTCODE
#include <stdio.h>
#endif


volatile char * UartTx = (char *) 0xfffff907;
volatile char * UartRx = (char *) 0xfffff905;
volatile char * UartTxStat = (char *) 0xfffff906;
volatile char * UartRxStat = (char *) 0xfffff904;

char PutUart (char ch)
{
	*UartTx = ch;
	while (!(*UartTxStat & 0x20));
	return ch;
}

char GetUart(void)
{
	while (!(*UartRxStat & 0x20));
	return *UartRx;
}

void flushInput(void)
{
	char buffer;
	while (*UartRxStat & 0x20) // keep reading until there's nothing to read
		buffer = *UartRx;
}

char getC (void)
{
	return GetUart();
}

void inputhex(void *number, char length)
{
	char input = 0;
	char counter = 0;
	char value = 0;
	char *charNumber = number;

	for (counter = 0; counter < length; counter++)
	{
		do
		{
			input = getC(); // get the digit

/*			if ((input & 0xDF) == 'X') // if the user clicks x, we allow him to restart
			{
			}
*/
			if (input >= '0' && input <= '9') // is it numeric (hex)?
				value	= input - '0';
			else if ((input & 0xDF) >= 'A' && (input & 0xDF) <= 'F') // is it numeric (hex)?
			{
				value = input & 0xDF;
				value -= 'A';
				value += 10;
			}
			else // if it's not, set input to continue looping
				input = 255; 		
		} while (input == 255); // keep getting characters until a valid digit is input

		if (counter & 0x1) // is this the second digit in a byte?
		{ // yes
			*charNumber += value; // add the second digit in its right location
			charNumber++; // since this is the second digit in the byte, we should move to the next byte
		}
		else
		{ // no
			*charNumber = value << 4; // set the first digit and zeros in place of the other
		}

		putC(input); // show the user what (s)he input
	}
}

void putS (char * str)
{
	while (*str) PutUart (*(str++));
}


void putC (char ch)
{
	PutUart (ch);
}


void nl (void)
{
	//putC (0xd); putC (0xa);
	putC('\r');
}

void printd (unsigned long n)
{
unsigned long	i;
	if ((i = Divide (n, 10)) != 0) printd (i);
	putC (Modulo (n, 10) + '0');
}

void printhex (unsigned long n)
{
unsigned long	i;
	if ((i = n / 16)) printhex (i);
	if (n % 16 > 9) putC (n % 16 + '7');
	else putC (n % 16 + '0');
}

void sprinthex (char *str[], unsigned long n)
{
unsigned long	i;
	if ((i = n / 16)) sprinthex (str, i);
	if (n % 16 > 9) **str = (n % 16 + '7');
	else **str = (n % 16 + '0');
	(*str)++; **str = '\0';
}

int Modulo (int Dividend, int Divisor)
{
int	k;
#ifdef BOOTCODE
asm volatile ("
	move.l	8(%%a6), %%d0
	move.l	12(%%a6), %%d1
	divu		%%d1, %%d0
	move.l	%%d0, %0
	" : "=d" (k) : : "%%d0", "%%d1");
#else
asm volatile ("
	move.l	8(%%sp), %%d0
	move.l	12(%%sp), %%d1
	divu		%%d1, %%d0
	move.l	%%d0, %0
	" : "=d" (k) : : "%%d0", "%%d1");
#endif
	return (k >> 16);
}

int Divide (int Dividend, int Divisor)

{
int	k;
#ifdef BOOTCODE
asm volatile ("
	move.l	8(%%a6), %%d0
	move.l	12(%%a6), %%d1
	divu		%%d1, %%d0
	move.l	%%d0, %0
	" : "=d" (k) : : "%%d0", "%%d1");
#else
asm volatile ("
	move.l	8(%%sp), %%d0
	move.l	12(%%sp), %%d1
	divu		%%d1, %%d0
	move.l	%%d0, %0
	" : "=d" (k) : : "%%d0", "%%d1");
#endif
	return (k & 0xffffl);
}



