/* This is gnu code
   (C) 2001 by Daniel Haensse <daniel.haensse@alumni.ethz.ch>
	 (C) 2001 by Khaled Hassounah <khassounah@yahoo.com> */

#include <asm/MC68EZ328.h>
#include <bootstrap.h>

void loader(void)
{
 putS ("\n\rDragonix Flashloader V1.1 - KH fork :-)"); nl (); nl();
 putS ("Reading chip ID"); nl();
 if(flash_present()) return;

 //takeControl();

 putS ("Erasing Flash"); nl ();
 if(flash_erase()) return;
 putS ("Programming flash"); nl ();
 if(flash_program()) return;
 putS ("Flash is programmed!"); nl ();
 putS ("Please remove bootstrap jumper & reset"); nl ();
}


