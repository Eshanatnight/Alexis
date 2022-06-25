NASM = nasm
QEMU = qemu-system-x86_64

all:

one:
	${NASM} -f bin src/boot.asm -o boot.bin
	${QEMU} -fda boot.bin

two:
	${NASM} -f bin src/boot2.asm -o boot.bin
	${QEMU} -fda boot.bin

three:
	${NASM} -f bin src/boot3.asm -o boot.bin
	${QEMU} -fda boot.bin


clear:
	rm boot.bin