MEMORY
	{
	flash  : ORIGIN = 0x02000000, LENGTH = 0x02000000
	eflash : ORIGIN = 0x04000000, LENGTH = 0
	ram    : ORIGIN = 0x00000000, LENGTH = 0x00800000 - 0x00600000
	eram   : ORIGIN = 0x00200000, LENGTH = 0

	}

SECTIONS {
	.text : {
		_stext = . ;
		*(.text)
		_etext = . ;
		__data_rom_start = ALIGN(4);

	} > ram

	.data : {
		_sdata = . ;
		*(.data)
		_edata = . ;
	} > ram

        .bss :
        {
	_sbss = ALIGN( 0x10 ) ;
	__bss_start = ALIGN( 0x10 ) ;
	__data_end = ALIGN( 0x10 ) ;
	*(.bss)
	*(COMMON)
	_ebss = . ;
	__bss_end = . ;
	end = ALIGN( 0x10 ) ;
	_end = ALIGN( 0x10 ) ;
	} > ram

	.eram : {
		_ramend = .;
	} > eram
}
