/* This is gnu code
   (C) 2001 by Khaled Hassounah <khassounah@yahoo.com> */

#include <asm/MC68EZ328.h>
#include <bootstrap.h>

volatile unsigned short * pFlash = (unsigned short *)    0x10000000;


int showMenu(void)
{
	char input = 0;
	do
	{
		// first show our menu
		nl();
		putS("DragonOne Menu\r");
		putS("1. Erase Flash\r");
		putS("2. Program Flash\r");
		putS("3. Get Word\r");
		putS("4. Set Word\r");
		putS("5. Reset Flash\r");
		
		flushInput(); // clean the buffer
		input = getC(); // get user selection
	} while (input > '5' || input < '1'); // if user made the wrong selection, kill him, or simply give him another chance
	
	return (input - '0'); // convert selection to an integer (1-5)
}

getWord()
{
	unsigned long address;
	putS("Enter address to read: ");
	inputhex(&address, 8);

	address &= 0xFFFFFFFE; // insure that we are at a word boundary
	
	nl();
	putS("The address contains the value: "); printhex(*((unsigned short *)address)); nl();
}

setWord()
{
	unsigned long address = 0;
	unsigned short value = 0;

	// first get the address
	putS("Enter address to write to: ");
	inputhex(&address, 8);
	nl();

	address &= 0xFFFFFFFE; // insure that we are at a word boundary

	// then get the value to write
	putS("Enter value to program: ");
	inputhex(&value, 4);
	nl();

	*pFlash = 0xAAAA;
	*pFlash = 0x5555;
	*pFlash = 0xA0A0;
	*((unsigned short *)address) = value;

	putS("Done. You don't believe me? Check for yourself\r");
}

void dispatch(int selection)
{
		
	switch(selection)
	{
	case 1:
		// temp - start
		putS("This option is disabled for now\r");
		break;
		// temp - end
		flash_erase();
		break;

	case 2:
		// temp - start
		putS("This option is disabled for now\r");
		break;
		// temp - end
		flash_program();
		break;

	case 3:
		getWord();
		break;

	case 4:
		setWord();
		break;

	case 5:
		flash_reset();
		break;
	};
}		


void takeControl(void)
{
	char userSelection;

	flash_present();
	while (True)
	{
		userSelection = showMenu();
		dispatch(userSelection);
	}
}
