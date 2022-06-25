NASM = nasm
QEMU = qemu-system-x86_64
CXX = g++

COMPILER_FLAGS = -nostdlib -ffreestanding -std=c++11 -mno-red-zone -fno-exceptions -nostdlib -fno-rtti -Wall -Wextra -Werror -T linker.ld

all: ${four}


one:
	${NASM} -f bin src/archive/boot.asm -o boot.bin
	${QEMU} -fda boot.bin

two:
	${NASM} -f bin src/archive/boot2.asm -o boot.bin
	${QEMU} -fda boot.bin

three:
	${NASM} -f bin src/archive/boot3.asm -o boot.bin
	${QEMU} -fda boot.bin

four:
	${NASM} -f elf32 src/boot4.asm -o intermediates/boot4.o
	${CXX} -m64 src/kmain.cpp intermediates/boot4.o -o kernel.bin ${COMPILER_FLAGS}


clear:
	rm boot.bin