# Alexis

An Operating System Project.

## Prerequisites

You need to have Homebrew installed before doing anything.
You can click [here](brew.sh) to go to their documentations.

## Setup

Just running the setup script `setup.sh` will do it.

But if you want to be through

```terminal
brew install nasm qemu gmp mpfr libmpc gcc
brew tap nativeos/i386-elf-toolchain
brew install i386-elf-binutils i386-elf-gcc i386-elf-gdb
```

an alternative way to use the cross-compilers, would be to build them from scratch. But I won't recommend it.

## Running

Just use the command

```terminal
make run
```
