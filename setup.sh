brew install nasm qemu gmp mpfr libmpc gcc
brew tap nativeos/i386-elf-toolchain
brew install i386-elf-binutils i386-elf-gcc i386-elf-gdb

# This is not working properly
#    export CC=/usr/local/bin/gcc-5
#    export LD=/usr/local/bin/gcc-5
#    export PREFIX="/usr/local/i386elfgcc"
#    export TARGET=i386-elf
#    export PATH="$PREFIX/bin:$PATH"
#
#    mkdir /tmp/src
#    cd /tmp/src
#    curl -O http://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.gz # If the link 404's, look for a more recent version
#    tar xf binutils-2.24.tar.gz
#    mkdir binutils-build
#    cd binutils-build
#    ../binutils-2.24/configure --target=$TARGET --enable-interwork --enable-multilib --disable-nls --disable-werror --prefix=$PREFIX 2>&1 | tee configure.log
#    make all install 2>&1 | tee make.log
#
#    cd /tmp/src
#    curl -O https://mirror.squ.edu.om/gnu/gcc/gcc-5.2.0/gcc-5.2.0.tar.bz2
#    tar xf gcc-5.2.0.tar.bz2
#    mkdir gcc-build
#    cd gcc-build
#    ../gcc-5.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --disable-libssp --enable-languages=c --without-headers
#    make all-gcc
#    make all-target-libgcc
#    make install-gcc
#    make install-target-libgcc
#
