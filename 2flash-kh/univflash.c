/* This is gnu code
   (C) 2001 by Daniel Haensse <daniel.haensse@alumni.ethz.ch>
   (C) 2001 by Khaled Hassounah <khassounah@yahoo.com> */

#include <asm/MC68EZ328.h>
#include <bootstrap.h>

volatile unsigned short * pSourceA = (unsigned short *)         0x00200000;
volatile unsigned short * pSourceB = (unsigned short *)         0x00200000;
volatile unsigned short * pDestinationA = (unsigned short *)    0x10000000;
volatile unsigned short * pDestinationB = (unsigned short *)    0x10800000;
volatile unsigned short * pCSA = (unsigned short *)             0xfffff110;
unsigned long SizeA = 0;
unsigned long ExpA = 0;
unsigned long SizeB = 0;

#undef BANKB

unsigned long programLength = 0x100000;

#define DELAYLOOP 10000000
#define ACTUALLENGTH (programLength / 2) // The count is in shorts (2bytes) so adding 0x80000 is like adding 1MB, got it? :-)

int flash_present()
{
    // Set size to biggest
    putS ("CSA is set to 0x");
    printhex(*pCSA);
    putS("\n\rPlease make sure timing is right\n\r");

    /* Read Reset */
    putS ("Resetting flash (Bank A)\n\r");
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0xF0F0;

    putS ("Autoselect Code (Bank A)\n\r");
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0x9090;
    putS ("Manufacturer's Code (Bank A)=");
    printhex(*(pDestinationA)); nl();
    putS ("Device Code (Bank A)=");
    printhex(*(pDestinationA+1)); nl();

    putS ("Sending CFI Query (Bank A)\n\r");
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0x9898; /* CFI Query */
    *(pDestinationA)=0x9898; /* Query again for devices that don't need command sequence for query ;-) */
    putS ("Reading CFI Query identification (Bank A)\n\r");
    if((*(pDestinationA+0x0010)==0x5151) && (*(pDestinationA+0x0011)==0x5252) && (*(pDestinationA+0x0012)==0x5959))
    {
        ExpA=*(pDestinationA+0x0027);
				ExpA = (ExpA & 0xff) + 1; // adjust the output coming from two 8-bit flash ics
    		SizeA= (1 << ExpA);
        putS ("Size is 0x");
        printhex(SizeA);
        nl();
    }
    else
    {
        printhex(*(pDestinationA+0x0010));
        printhex(*(pDestinationA+0x0011));
        printhex(*(pDestinationA+0x0012));
    		putS("No answer from Bank A\n\r");
        return(1); //fatal
    }

    #ifdef BANKB
    putS ("Resetting flash (Bank B)\n\r");
    *(pDestinationB)=0xAAAA;
    *(pDestinationB)=0x5555;
    *(pDestinationB)=0xF0F0;

    putS ("Autoselect Code (Bank B)\n\r");
    *(pDestinationB+0x5555)=0xAAAA;
    *(pDestinationB+0x2AAA)=0x5555;
    *(pDestinationB+0x5555)=0x9090;
    putS ("Manufacturer's Code (Bank B)=");
    printhex(*(pDestinationB)); nl();
    putS ("Device Code (Bank B)=");
    printhex(*(pDestinationB+1)); nl();

    putS ("Sending CFI Query (Bank B)\n\r");
    *(pDestinationB+0x5555)=0xAAAA;
    *(pDestinationB+0x2AAA)=0x5555;
    *(pDestinationB+0x5555)=0x9898; // CFI Query 
    *(pDestinationB+0x5555)=0x9898; // Query again for devices that don't need command sequence for query ;-)
    putS ("Reading CFI Query identification (Bank B)\n\r");
    if(*(pDestinationB+0x0010)==0x0051 && *(pDestinationB+0x0011)==0x0052 && *(pDestinationB+0x0012)==0x0059)
    {
    	SizeB=1<<(*(pDestinationB+0x0027));
        putS ("Size is 0x");
        printhex(SizeB);
        nl();

    }
    else
    {
        printhex(*(pDestinationB+0x0010));
        printhex(*(pDestinationB+0x0011));
        printhex(*(pDestinationB+0x0012));
    	putS("No answer from Bank B\n\r");
    }
    #endif // BANKB


    *(pDestinationA)=0xf0f0; /* Exit software id mode */


    #ifdef BANKB
		*pDestinationB=0xf0f0;
		#endif // BANKB

    putS ("Calculating CSA size to have continuous flash memory range\n\r");
    // Set CSA now
    if(ExpA >=17 && ExpA <=24)
    {
        *pCSA=(*pCSA & 0xfff1)|(((ExpA-17)<<1)&0x000e); // Set Range from 128k up to 16MB
        putS ("CSA is set to 0x");
        printhex(*pCSA);
        nl();
        pSourceB=pSourceA+(SizeA>>1);
        pDestinationB=pDestinationA+(SizeA>>1);
    }
    else
    {
        putS("Size of Bank A is out of range\n\r");
    	return(1); // fatal
    }
    return(0);
}


int flash_erase()
{
    unsigned short statusA=0,statusB=0;
		unsigned short toggleCheck=0x4444, DQ5Check=0x2020;
    unsigned long counter;
    putS ("Sending chip erase command sequence (Bank A)\n\r");
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0x8080;
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0x1010;
    if(SizeB)
    {
        putS ("Sending chip erase command sequence (Bank B)\n\r");
        *(pDestinationB+0x5555)=0xAAAA;
        *(pDestinationB+0x2AAA)=0x5555;
        *(pDestinationB+0x5555)=0x8080;
        *(pDestinationB+0x5555)=0xAAAA;
        *(pDestinationB+0x2AAA)=0x5555;
        *(pDestinationB+0x5555)=0x1010;
    }

		// KH - I modified the logic to sense toggling instead of timing out

		statusA = 1;
		while (statusA)
		{
			statusA = *pDestinationA & 0x4444; // read bits 2 and 6
			statusA ^= *pDestinationA & 0x4444; // check bits 2 and 6 for toggling
			if (statusA && (*pDestinationA & DQ5Check)) // check for DQ5
			{
				toggleCheck = 0;
				if ((DQ5Check & 0x20) && (*pDestinationA & DQ5Check)) // should we check the lower chip?
				{
					DQ5Check &= 0xff00; // don't check the lower chip again
					toggleCheck |= 0x44;
					putS("\rlower chip DQ5 is up\r");					
				}
				if ((DQ5Check & 0x2000) && (*pDestinationA & DQ5Check)) // should we check the upper chip?
				{
					DQ5Check &= 0x00ff; // don't chech the upper chip again
					toggleCheck |= 0x4400;
					putS("\rupper chip DQ5 is up\r");					
				}

				// if we were toggling and DQ5 is set, check if we are still toggling
				if ((*pDestinationA & toggleCheck) ^ (*pDestinationA & toggleCheck))
				{
					// at least one chip is still toggling although its DQ5 pin is up... tough luck
					// reset
					*pDestinationA = 0xf0f0;
					// ... inform user
					putS("\n\rAt least one chip reported erase error, aborting\n\r");
					// ...and return an error
					return(1);
				}
			}
			if ((counter & 0xfffff000) == counter)
			{
				putS(".");
				counter = 0;
			}
			counter++;
		}
		putS("\n\rErase Successful.\n\r");
		return(0);
}

int flash_program()
{
 unsigned long loopA=0,loopB=0;
 unsigned short statusA=0,statusB=0;
 unsigned long counterA=0,counterB=0;
 unsigned long sizeA=SizeA>>1,sizeB=SizeB>>1;
 unsigned short buffer;
 putS ("Programming (Bank A + B)\n\r");

 while(1)
 {
#ifdef BANKB
  if(((loopA%0x1000)==0 && counterA==0) || ((loopB%0x1000)==0 && counterB==0))  { putS("\n\r"); printhex((unsigned long)(pDestinationA+loopA)); putC(' '); printhex((unsigned long)(pDestinationB+loopB));}
#else
  if((loopA%0x1000)==0 && counterA==0)  { putS("\n\r"); printhex((unsigned long)(pDestinationA+loopA)); /*putC(' '); printhex((unsigned long)(pDestinationB+loopB));*/}
#endif // BANKB
	if (loopA<ACTUALLENGTH); // KH - modified to be able to control how much is written to the flash memory
  {
   if(counterA==0)
   {
    *(pDestinationA)=0xAAAA;
    *(pDestinationA)=0x5555;
    *(pDestinationA)=0xA0A0;

		*(pDestinationA+loopA)=*(pSourceA+loopA);
    counterA=DELAYLOOP;
   }
   else
   {
    if(counterA>0) counterA--;
    if(counterA==0)  /* timeout error */
    {
			putS("\rTimeout error Bank A at "); printhex((unsigned long)(pDestinationA+loopA)); nl();
			return(1);
    }
    statusA=*(pDestinationA+loopA)&0x8080;
    if (statusA==(*(pSourceA+loopA)&0x8080))
    {
    	loopA++;
    	if(loopA==sizeA && loopB<sizeB) { nl(); putS("The Winner is Bank A 8-)"); nl();}
    	counterA=0;
    }
   }
  }
#ifdef BANKB
	// KH - because I replaced sizeA above with ACTUALLENGTH, this won't work correctly for two banks of flash, the logic will needed to be revisited
  if(loopB<sizeB)
  {
   if(counterB==0)
   {
    *(pDestinationB+0x5555)=0xAAAA;
    *(pDestinationB+0x2AAA)=0x5555;
    *(pDestinationB+0x5555)=0xA0A0;
    *(pDestinationB+loopB)=*(pSourceB+loopB);
    counterB=DELAYLOOP;
   }
   else
   {
    if(counterB>0) counterB--;
    if(counterB==0)
    {
			putS("\rTimeout error Bank B at "); printhex((unsigned long)(pDestinationB+loopB)); nl();
			return(1);
    }
    statusB=*(pDestinationB+loopB)&0x0080;
    if (statusB==(*(pSourceB+loopB)&0x0080))
    {
    	loopB+=1;
    	if(loopB==sizeB && loopA<sizeA) { nl(); putS("The Winner is Bank B 8-)"); nl();}
    	counterB=0;
    }
   }
  }
#endif // BANKB

#ifdef BANKB
	// KH - the same comment above, about replacing sizeA with ACTUALLENGTH, applies here
	if(loopA==sizeA && loopB==sizeB)
#else
	if (loopA==ACTUALLENGTH)
#endif // BANKB
  {
   putS("\n\rSuccess"); nl();
   return(0);
  }
 } // while
}

int flash_reset()
{
	*pDestinationA = 0xF0F0;
	putS("\rFlash was reset\r");
	return(0);
}