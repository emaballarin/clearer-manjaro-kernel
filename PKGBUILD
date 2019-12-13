# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer: Philip Müller (x86_64) <philm@manjaro.org>
# Maintainer: Jonathon Fernyhough (i686) <jonathon@manjaro.org>
# Contributor: Helmut Stult <helmut[at]manjaro[dot]org>

pkgbase=linux55
pkgname=('linux55' 'linux55-headers')
_kernelname=-MANJARO
_basekernel=5.5
_basever=55
_aufs=20191021
_sub=0
_rc=rc1
_commit=e42617b825f8073569da76dc4510bfa019b1c35a
_shortcommit=${_rc}.d1208.g${_commit:0:7}
pkgver=${_basekernel}${_shortcommit}
#pkgver=${_basekernel}.${_sub}
pkgrel=2
arch=('i686' 'x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git')
options=('!strip')
source=(#"https://www.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.xz"
        #"https://www.kernel.org/pub/linux/kernel/v5.x/patch-${pkgver}.xz"
        #https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/snapshot/linux-stable-rc-$_commit.tar.gz
        #"linux-${pkgver}.tar.gz::https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/snapshot/linux-$_commit.tar.gz"
        "linux-${pkgver}.zip::https://codeload.github.com/torvalds/linux/zip/$_commit"
        # the main kernel config files
        'config.x86_64' 'config' 'config.aufs'
        # AUFS Patches
        "aufs5.x-rcN-${_aufs}.patch"
        'aufs5-base.patch'
        'aufs5-kbuild.patch'
        'aufs5-loopback.patch'
        'aufs5-mmap.patch'
        'aufs5-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'
        # ARCH Patches
        0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch
        # MANJARO Patches
        '0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch::https://gitlab.com/apparmor/apparmor-kernel/commit/6408dbde30855bb9a2af44c9053ba2329db57c7f.patch'
        '0002-apparmor-af_unix-mediation.patch::https://gitlab.com/apparmor/apparmor-kernel/commit/7a291673471aa583694ee760aa33e5a3f5ae9a9e.patch'
        '0003-apparmor-fix-use-after-free-in-sk_peer_label.patch::https://gitlab.com/apparmor/apparmor-kernel/commit/9ae046ed7b54b01078e33227fa266282c41f981d.patch'
        '0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch::https://gitlab.com/apparmor/apparmor-kernel/commit/b6a5dfbaa728854457570bf72b693a89550cc1f8.patch'
        '0001-v5-xps13-sparc64-implement-ioremap_uc.patch'
        '0002-v5-xps13-lib-devres-add-a-helper-function-for-ioremap_uc.patch'
        '0003-v5-xps13-mfd-intel-lpss-use-devm_ioremap_uc-for-MMIO.patch'
        '0004-v5-xps13-docs-driver-model-add-devm_ioremap_uc.patch'
        '0001-nonupstream-navi10-vfio-reset.patch'
        '0001-drm-amdgpu-Add-DC-feature-mask-to-disable-fractional-pwm.patch'
        # Bootsplash
        '0001-bootsplash.patch'
        '0002-bootsplash.patch'
        '0003-bootsplash.patch'
        '0004-bootsplash.patch'
        '0005-bootsplash.patch'
        '0006-bootsplash.patch'
        '0007-bootsplash.patch'
        '0008-bootsplash.patch'
        '0009-bootsplash.patch'
        '0010-bootsplash.patch'
        '0011-bootsplash.patch'
        '0012-bootsplash.patch'
        '0013-bootsplash.patch')
sha256sums=('c2f39d4c4934030af4b7cfc4ba8ac1c6219dc83aad891a70418860253eb9753c'
            '91eae1a0f9217f9d9e417b92cc682180de8b025ce371626d7bfdf4ee0a1716a6'
            'bfe52746bfc04114627b6f1e0dd94bc05dd94abe8f6dbee770f78d6116e315e8'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            'bf9480b92c5feaf8583785c2f4332df3bfa4fa2eeac8ebd85da24c6a88dac58c'
            '7ff57fd146dc4c8f5fd37062e44cbf7e70164df5a684d3b4bb3e8a787c060503'
            '789a933080a85120dbeb12de2f243498b5e454128f2cf77dd16d47a27b235f79'
            '16e981ac6beedd3bc264e03c1e8d25681d8ad9e5ad469e3630b3e2e6ba76e8ec'
            'a44fb19196c2e63e2733a210358afb309f598d8155488424a8620ec7f309de08'
            '1060cceb84a7d178d4a0e1946d06055ddab0b5b110d385e9d087557143c6659f'
            '55dc8df3a3d3e248eb93f5878f567428f77acb72f6243934bd6980cfede3b6ca'
            'e2d75e11a2c220e5d3a450bb226e7e19d62a871764da5f76034fbc135fe6c749'
            '7685d526bbdbfa795986591a70071c960ff572f56d3501774861728a9df8664c'
            '3890385993aa449398e0f9feb9de7fbb3ce48b0022e4f76911912a5d117b657c'
            'e37b55517920a2a08738d269dc10a06dc09dac89ef9971da4e8186c3897111c4'
            '54c394622f77a21605c702e24867692677d1a24429e204b97dc0e9884cad88c4'
            'dc77afe76314818d84c9293da6073fab67fa961e5e55d6f285fdd8cf447c19ad'
            'f196cf64384cc4c35f9b82615bd62aca538653fa1e8d2ee82cd021697daa27b2'
            '62539558ec5b5f87f1740f5e4e84a3740528afb8bec6335d2de721a3c8b93531'
            '267a28e932095238604e4e23062d142fa1e2836b629190e673614159968dbec7'
            'e82c72cd391261e79ae25330848877c451b4fa60cabed9c16898983eab269c89'
            '7a2758f86dd1339f0f1801de2dbea059b55bf3648e240878b11e6d6890d3089c'
            '1fd4518cb0518d68f8db879f16ce16455fdc2200ed232f9e27fb5f1f3b5e4906'
            'a504f6cf84094e08eaa3cc5b28440261797bf4f06f04993ee46a20628ff2b53c'
            'e096b127a5208f56d368d2cb938933454d7200d70c86b763aa22c38e0ddb8717'
            '8c1c880f2caa9c7ae43281a35410203887ea8eae750fe8d360d0c8bf80fcc6e0'
            '1144d51e5eb980fceeec16004f3645ed04a60fac9e0c7cf88a15c5c1e7a4b89e'
            'dd4b69def2efacf4a6c442202ad5cb93d492c03886d7c61de87696e5a83e2846'
            '028b07f0c954f70ca37237b62e04103e81f7c658bb8bd65d7d3c2ace301297dc'
            'c8b0cb231659d33c3cfaed4b1f8d7c8305ab170bdd4c77fce85270d7b6a68000'
            '8dbb5ab3cb99e48d97d4e2f2e3df5d0de66f3721b4f7fd94a708089f53245c77'
            'a7aefeacf22c600fafd9e040a985a913643095db7272c296b77a0a651c6a140a'
            'e9f22cbb542591087d2d66dc6dc912b1434330ba3cd13d2df741d869a2c31e89'
            '27471eee564ca3149dd271b0817719b5565a9594dc4d884fe3dc51a5f03832bc'
            '60e295601e4fb33d9bf65f198c54c7eb07c0d1e91e2ad1e0dd6cd6e142cb266d'
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef')
prepare() {
  #mv "${srcdir}/linux-stable-rc-${_commit}" "${srcdir}/linux-${_basekernel}"
  mv "${srcdir}/linux-${_commit}" "${srcdir}/linux-${_basekernel}"
  cd "${srcdir}/linux-${_basekernel}"

  # add upstream patch
  #patch -p1 -i "${srcdir}/patch-${pkgver}"

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}`date +%Y%m%d`"

  # disable USER_NS for non-root users by default
  echo "PATCH: 0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER"
  patch -Np1 -i ../0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch
  echo "-------------------------------------------------------------------------------------------------------"
  # add patches for snapd
  # https://gitlab.com/apparmor/apparmor-kernel/tree/5.2-outoftree
  echo "PATCH: 0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules"
  patch -Np1 -i "${srcdir}/0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0002-apparmor-af_unix-mediation"
  patch -Np1 -i "${srcdir}/0002-apparmor-af_unix-mediation.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0003-apparmor-fix-use-after-free-in-sk_peer_label"
  patch -Np1 -i "${srcdir}/0003-apparmor-fix-use-after-free-in-sk_peer_label.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets"
  patch -Np1 -i "${srcdir}/0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch"
  echo "-------------------------------------------------------------------------------------------------------"

  # fix dell xps 13 2-in-1 issue
  # https://lkml.org/lkml/2019/10/16/1230
#  echo "PATCH: 0001-v5-xps13-sparc64-implement-ioremap_uc"
#  patch -Np1 -i "${srcdir}/0001-v5-xps13-sparc64-implement-ioremap_uc.patch"
#  echo "-------------------------------------------------------------------------------------------------------"
#  echo "PATCH: 0002-v5-xps13-lib-devres-add-a-helper-function-for-ioremap_uc"
#  patch -Np1 -i "${srcdir}/0002-v5-xps13-lib-devres-add-a-helper-function-for-ioremap_uc.patch"
#  echo "-------------------------------------------------------------------------------------------------------"
#  echo "PATCH: 0003-v5-xps13-mfd-intel-lpss-use-devm_ioremap_uc-for-MMIO"
#  patch -Np1 -i "${srcdir}/0003-v5-xps13-mfd-intel-lpss-use-devm_ioremap_uc-for-MMIO.patch"
#  echo "-------------------------------------------------------------------------------------------------------"
#  echo "PATCH: 0004-v5-xps13-docs-driver-model-add-devm_ioremap_u"
#  patch -Np1 -i "${srcdir}/0004-v5-xps13-docs-driver-model-add-devm_ioremap_uc.patch"
#  echo "-------------------------------------------------------------------------------------------------------"

  # https://bugzilla.kernel.org/show_bug.cgi?id=204957
#  echo "PATCH: 0001-drm-amdgpu-Add-DC-feature-mask-to-disable-fractional-pwm"
#  patch -Np1 -i "${srcdir}/0001-drm-amdgpu-Add-DC-feature-mask-to-disable-fractional-pwm.patch"
#  echo "-------------------------------------------------------------------------------------------------------"

  # TODO: remove when AMD properly fixes it!
  # INFO: this is a hack and won't be upstreamed
  # https://forum.level1techs.com/t/145666/86
  # https://forum.manjaro.org/t/107820/11
  echo "PATCH: 0001-nonupstream-navi10-vfio-reset"
  patch -Np1 -i "${srcdir}/0001-nonupstream-navi10-vfio-reset.patch"
  echo "-------------------------------------------------------------------------------------------------------"

  # Add bootsplash - http://lkml.iu.edu/hypermail/linux/kernel/1710.3/01542.html
  echo "PATCH: 0001-bootsplash"
  patch -Np1 -i "${srcdir}/0001-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0002-bootsplash"
  patch -Np1 -i "${srcdir}/0002-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0003-bootsplash"
  patch -Np1 -i "${srcdir}/0003-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0004-bootsplash"
  patch -Np1 -i "${srcdir}/0004-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0005-bootsplash"
  patch -Np1 -i "${srcdir}/0005-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0006-bootsplash"
  patch -Np1 -i "${srcdir}/0006-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0007-bootsplash"
  patch -Np1 -i "${srcdir}/0007-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0008-bootsplash"
  patch -Np1 -i "${srcdir}/0008-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0009-bootsplash"
  patch -Np1 -i "${srcdir}/0009-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0010-bootsplash"
  patch -Np1 -i "${srcdir}/0010-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0011-bootsplash"
  patch -Np1 -i "${srcdir}/0011-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  echo "PATCH: 0012-bootsplash"
  patch -Np1 -i "${srcdir}/0012-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"
  # use git-apply to add binary files
  echo "PATCH: 0013-bootsplash"
  git apply -p1 < "${srcdir}/0013-bootsplash.patch"
  echo "-------------------------------------------------------------------------------------------------------"

  # add aufs5 support
#  patch -Np1 -i "${srcdir}/aufs5.x-rcN-${_aufs}.patch"
#  patch -Np1 -i "${srcdir}/aufs5-base.patch"
#  patch -Np1 -i "${srcdir}/aufs5-kbuild.patch"
#  patch -Np1 -i "${srcdir}/aufs5-loopback.patch"
#  patch -Np1 -i "${srcdir}/aufs5-mmap.patch"
#  patch -Np1 -i "${srcdir}/aufs5-standalone.patch"
#  patch -Np1 -i "${srcdir}/tmpfs-idr.patch"
#  patch -Np1 -i "${srcdir}/vfs-ino.patch"

  if [ "${CARCH}" = "x86_64" ]; then
    cat "${srcdir}/config.x86_64" > ./.config
  else
    cat "${srcdir}/config" > ./.config
  fi

#  cat "${srcdir}/config.aufs" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  # set patchlevel to 5
  sed -ri "s|^(PATCHLEVEL =).*|\1 5|" Makefile

  # set extraversion to pkgrel
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

  # don't run depmod on 'make install'. We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh

  # get kernel version
  make prepare

  # load configuration
  # Configure the kernel. Replace the line below with one of your choice.
  #make menuconfig # CLI menu for configuration
  #make nconfig # new CLI menu for configuration
  #make xconfig # X-based configuration
  #make oldconfig # using old config from previous kernel version
  # ... or manually edit .config

  # rewrite configuration
  yes "" | make config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  # build!
  make ${MAKEFLAGS} LOCALVERSION= bzImage modules
}

package_linux55() {
  pkgdesc="The ${pkgbase/linux/Linux} kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27')
  optdepends=('crda: to set the correct wireless channels of your country')
  provides=("linux=${pkgver}")

  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" modules_install

  # systemd expects to find the kernel here to allow hibernation
  # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
  cp arch/$KARCH/boot/bzImage "${pkgdir}/usr/lib/modules/${_kernver}/vmlinuz"

  # Used by mkinitcpio to name the kernel
  echo "${pkgbase}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/pkgbase"
  echo "${_basekernel}-${CARCH}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/kernelbase"

  # add kernel version
  if [ "${CARCH}" = "x86_64" ]; then
     echo "${pkgver}-${pkgrel}-MANJARO x64" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  else
     echo "${pkgver}-${pkgrel}-MANJARO x32" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  fi

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--MANJARO}"
  ln -s "../${_extramodules}" "${pkgdir}/usr/lib/modules/${_kernver}/extramodules"

  # add real version for building modules and running depmod from hook
  echo "${_kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  # remove build and source links
  rm "${pkgdir}"/usr/lib/modules/${_kernver}/{source,build}

  # now we call depmod...
  depmod -b "${pkgdir}/usr" -F System.map "${_kernver}"

  # add vmlinux
  install -Dt "${pkgdir}/usr/lib/modules/${_kernver}/build" -m644 vmlinux
}

package_linux55-headers() {
  pkgdesc="Header files and scripts for building modules for ${pkgbase/linux/Linux} kernel"
  provides=("linux-headers=$pkgver")

  cd "${srcdir}/linux-${_basekernel}"
  local _builddir="${pkgdir}/usr/lib/modules/${_kernver}/build"

  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

  mkdir "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile"
  install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/asm-offsets.s"
  #install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/macros.s"

  if [ "${CARCH}" = "i686" ]; then
    install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile_32.cpu"
  fi

  cp -t "${_builddir}/arch/${KARCH}" -a "arch/${KARCH}/include"

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

  if [ "${CARCH}" = "x86_64" ]; then
    # add objtool for external module building and enabled VALIDATION_STACK option
    install -Dt "${_builddir}/tools/objtool" tools/objtool/objtool
  fi

  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */x86/ ]] && continue
    rm -r "${_arch}"
  done

  # remove files already in linux-docs package
  rm -r "${_builddir}/Documentation"

  # Fix permissions
  chmod -R u=rwX,go=rX "${_builddir}"

  # strip scripts directory
  local _binary _strip
  while read -rd '' _binary; do
    case "$(file -bi "${_binary}")" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)
}

_server=cx51
