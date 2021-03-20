/* This is gnu code
   (C) 2001 by Daniel Haensse <daniel.haensse@alumni.ethz.ch> */
//g++ bin2b.c -o bin2b
#include <alloca.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <termios.h>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <stdlib.h>
#include <errno.h>
main (int argc, char *argv[])
{
  unsigned long pc=0x00200000; /* Kernel at x instead of 0 */
  unsigned int linecounter=0;
  char command[(0x15*2)+2];
  FILE *pbin,*pb;
  if (argc != 3)
    {
      perror ("bin2b bin-filename b-filename\n");
      exit (-1);
    }
  pbin = fopen (argv[1], "r");
  pb = fopen (argv[2], "w");
  if (pbin == 0 || pb==0)
    {
      perror ("Could not open file\n");
      exit (-1);
    }
  while(feof(pbin)==0)
  {
   sprintf(&command[linecounter<<1],"%02X",fgetc(pbin)&0xff);
   command[(linecounter<<1)+2]=0;
   linecounter++;
   if(linecounter==0x15 || feof(pbin)!=0)
   {
    fprintf(pb,"%08X%02X%s\n",pc,linecounter,command);
    pc+=linecounter;
    linecounter=0;
   }
  }
  fclose(pbin);
  fclose(pb);
}
