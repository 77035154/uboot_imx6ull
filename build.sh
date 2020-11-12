#! /bin/sh

if [ "$1" = "clean" ];
then
	make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- distclean
	exit
fi

make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- imx6ull_fxb_emmc_defconfig
make ARCH=arm CROSS_COMPILE=../gcc-4.9.4-x86_64/bin/arm-linux-gnueabihf- -j8
