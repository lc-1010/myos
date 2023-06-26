OUTPUT_ARCH(riscv)
ENTRY(_start)
BASE_ADDRESS = 0x8020000;

SECTIONS
{
    . = BASE_ADDRESS;
    skernel = .;

    stext = .;
    .text : {
        *(.text.entry)
        *(.text .text.*)
    }
}