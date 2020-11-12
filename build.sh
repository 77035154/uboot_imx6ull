#! /bin/sh

if [ "$1" = "clean" ];
then
	make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- distclean
	exit
fi

make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- mx6ull_14x14_evk_emmc_defconfig
make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- -j8
