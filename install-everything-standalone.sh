#!/bin/zsh

##
## Install (0) the 'Clearer Manjaro' Kernel and the related (1) nvidia,
## (2) acpi_call, (3) virtualbox_host, (4) SPL/ZFS, kernel extramodules.
## Note that this script is meant to REPLACE currently-installed "linux55"
## packages.
##
## (C) 2019-* Emanuele Ballarin
## MIT License
##

####################
## Set some flags ##
####################
unset CXXFLAGS
unset CFFLAGS
unset CFLAGS
unset FFLAGS
unset LDFLAGS
export CXXFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native -fvisibility-inlines-hidden -Wl,--enable-new-dtags"
export CFFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
export CFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -Wformat -Wformat-security -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -fno-semantic-interposition -ffat-lto-objects -fno-trapping-math -Wl,-sort-common -Wl,--enable-new-dtags -fno-plt -march=native"
export FFLAGS="-g -O3 -feliminate-unused-debug-types -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=32 -m64 -fasynchronous-unwind-tables -Wp,-D_REENTRANT -ftree-loop-distribute-patterns -Wl,-z -Wl,now -Wl,-z -Wl,relro -malign-data=abi -fno-semantic-interposition -ftree-vectorize -ftree-loop-vectorize -Wl,--enable-new-dtags -march=native"
export LDFLAGS="-Wl,-O3,--sort-common,--as-needed,-z,relro,-z,now"

##################
## Get packages ##
##################

# Export variables
export CLEARERMANJARO_TMPDIR="$(pwd)/TMPDIR"
export CLEARERMANJARO_PKGS="$(pwd)/PKGS"

# Prepare build/install structure
mkdir -p "$CLEARERMANJARO_TMPDIR"
mkdir -p "$CLEARERMANJARO_PKGS"

# Clean-up (eventual) previous build
cd "$CLEARERMANJARO_TMPDIR"
rm -R -f ./*

# Clone relevant git repositories
cd "$CLEARERMANJARO_TMPDIR"

git clone --recursive https://github.com/emaballarin/clearer-manjaro-kernel.git
git clone --recursive https://github.com/emaballarin/clearer-manjaro-kernel-nvidia.git
git clone --recursive https://github.com/emaballarin/clearer-manjaro-kernel-acpi-call.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux55-extramodules/virtualbox-modules.git
#git clone --recursive https://gitlab.manjaro.org/packages/extra/linux55-extramodules/spl_zfs.git

###############################
## Auto-reconfigure packages ##
###############################

## # acpi_call
## cd "$CLEARERMANJARO_TMPDIR/acpi_call"
## mv ./acpi_call.install ./acpi_call-CLEARER.install
## sed -i "s/_linuxprefix=.*/_linuxprefix=linux55-CLEARER/g" ./PKGBUILD
## sed -i "s/_extramodules=.*/_extramodules=extramodules-5.5-CLEARER/g" ./PKGBUILD
## sed -i "s/install=\$_pkgname\.install.*/install=acpi_call-CLEARER\.install/g" ./PKGBUILD
## sed -i "s/acpi_call\.install\"/acpi_call-CLEARER\.install\"/g" ./PKGBUILD


## SPL/ZFS
#cd "$CLEARERMANJARO_TMPDIR/spl_zfs"
#mv ./install ./spl_zfs-CLEARER.install
#sed -i "s/_linuxprefix=.*/_linuxprefix=linux55-CLEARER/g" ./PKGBUILD
#sed -i "s/_extramodules=.*/_extramodules=extramodules-5.5-CLEARER/g" ./PKGBUILD
#sed -i "s/install=install.*/install=spl_zfs-CLEARER\.install/g" ./PKGBUILD
#sed -i "s/install\"/spl_zfs-CLEARER\.install\"/g" ./PKGBUILD
##sed -i "s/package_linux55-spl/package_linux55-clearer-spl/g" ./PKGBUILD
#sed -i "s/package_linux55-zfs/package_linux55-CLEARER-zfs/g" ./PKGBUILD

# virtualbox-modules
cd "$CLEARERMANJARO_TMPDIR/virtualbox-modules"
mv ./virtualbox-host-modules.install ./virtualbox-host-modules-CLEARER.install
mv ./virtualbox-guest-modules.install ./virtualbox-guest-modules-CLEARER.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux55-CLEARER/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-5.5-CLEARER/g" ./PKGBUILD
sed -i "s/install=virtualbox-host-modules\.install.*/install=virtualbox-host-modules-CLEARER\.install/g" ./PKGBUILD
sed -i "s/install=virtualbox-guest-modules\.install.*/install=virtualbox-guest-modules-CLEARER\.install/g" ./PKGBUILD
sed -i "s/virtualbox-host-modules\.install\"/virtualbox-host-modules-CLEARER\.install\"/g" ./PKGBUILD
sed -i "s/virtualbox-guest-modules\.install\"/virtualbox-guest-modules-CLEARER\.install\"/g" ./PKGBUILD
sed -i "s/package_linux55-virtualbox-host-modules/package_linux55-CLEARER-virtualbox-host-modules/g" ./PKGBUILD
sed -i "s/package_linux55-virtualbox-guest-modules/package_linux55-CLEARER-virtualbox-guest-modules/g" ./PKGBUILD

####################
## Build packages ##
####################

cd "$CLEARERMANJARO_TMPDIR/clearer-manjaro-kernel"
makepkg -Csfi --noconfirm

cd "$CLEARERMANJARO_TMPDIR/clearer-manjaro-kernel-nvidia"
makepkg -Csf --noconfirm

cd "$CLEARERMANJARO_TMPDIR/acpi_call"
makepkg -Csf --noconfirm

#cd "$CLEARERMANJARO_TMPDIR/spl_zfs"
#makepkg -Csf --noconfirm

## virtualbox-modules ##

# Build package
cd "$CLEARERMANJARO_TMPDIR/virtualbox-modules"
makepkg -Csf --noconfirm

# Remove (now useless) MAKE-dependencies previously installed
#echo "The following TWO lines MAY return an error. If so, it's expected."
sudo pacman -R virtualbox-guest-dkms virtualbox-host-dkms --noconfirm
sudo pacman -R virtualbox-guest-dkms virtualbox-host-dkms --noconfirm
echo "The PREVIOUS TWO lines MIGHT have returned an error. If so, it's expected."

#####################
## Deploy packages ##
#####################

# Ask if deployment/install is really wanted
echo ' '
bash -c "read -p '[[DIAG]] Was the whole build process successful? Press [ENTER] to deploy and install Manjaro clearer!'"
echo ' '

# Remove (eventually) previously built packages
rm -R -f "$CLEARERMANJARO_PKGS/*"


cd "$CLEARERMANJARO_TMPDIR/clearer-manjaro-kernel"
cp ./*.pkg.tar.xz "$CLEARERMANJARO_PKGS"

cd "$CLEARERMANJARO_TMPDIR/clearer-manjaro-kernel-nvidia"
cp ./*.pkg.tar.xz "$CLEARERMANJARO_PKGS"

cd "$CLEARERMANJARO_TMPDIR/acpi_call"
cp ./*.pkg.tar.xz "$CLEARERMANJARO_PKGS"

#cd "$CLEARERMANJARO_TMPDIR/spl_zfs"
#cp ./*.pkg.tar.xz "$CLEARERMANJARO_PKGS"

cd "$CLEARERMANJARO_TMPDIR/virtualbox-modules"
cp ./*host*.pkg.tar.xz "$CLEARERMANJARO_PKGS"

######################
## Install packages ##
######################
cd "$CLEARERMANJARO_PKGS"
sudo pacman -U ./* --noconfirm
trizen -S wireguard-tools uksmd --noconfirm

# Ask for file cleanup
echo ' '
bash -c "read -p '[[DIAG]] If the installation was successful, press [ENTER] to perform a file cleanup. Hit [CTRL]+[C] to exit without cleanup.'"
echo ' '

rm -R -f "$CLEARERMANJARO_TMPDIR"
rm -R -f "$CLEARERMANJARO_PKGS"
