# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer: Philip Müller (x86_64) <philm@manjaro.org>
# Maintainer: Jonathon Fernyhough (i686) <jonathon@manjaro.org>
# Contributor: Helmut Stult <helmut[at]manjaro[dot]org>

pkgbase=linux54
pkgname=('linux54' 'linux54-headers')
_kernelname=-MANJARO
_basekernel=5.4
_basever=54
_aufs=20191223
pkgver=5.4.15
pkgrel=1
arch=('i686' 'x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git')
options=('!strip')
source=("https://www.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.xz"
        "https://www.kernel.org/pub/linux/kernel/v5.x/patch-${pkgver}.xz"
        #"prepatch-${_basekernel}.patch"
        # the main kernel config files
        'config.x86_64' 'config' 'config.aufs'
        # AUFS Patches
        "aufs5.4-${_aufs}.patch"
        'aufs5-base.patch'
        'aufs5-kbuild.patch'
        'aufs5-loopback.patch'
        'aufs5-mmap.patch'
        'aufs5-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'
        # ARCH Patches
        '0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch'
        '0002-lib-devres-add-a-helper-function-for-ioremap_uc.patch'
        '0003-mfd-intel-lpss-use-devm_ioremap_uc-for-MMIO.patch'
        '0004-PCI-pciehp-prevent-deadlock-on-disconnect.patch'
        '0005-ACPI-PM-s2idle-rework-ACPI-events-sync.patch'
        '0006-iwlwifi-pcie-restore-support-for-Killer-Qu-C0-NICs.patch'
        '0007-drm-i915-save-AUD_FREQ_CNTRL-state-at-audio-domain-suspend.patch'
        '0008-drm-i915-Fix-audio-power-up-sequence-for-gen10-display.patch'
        '0009-drm-i915-extend-audio-CDCLK-2-BCLK-constraint-to-more-platforms.patch'
        '0010-drm-i915-limit-audio-CDCLK-constraint-back-to-GLK-only.patch'
        '0011-pinctrl-sunrisepoint-add-missing-interrupt-status-register-offset.patch'
        '0012-revert-iwlwifi-mvm-fix-scan-config-command-size.patch'
        '0013-Revert-e1000e-make-watchdog-use-delayed-work.patch'
        '0014-drm-amdgpu-add-dc-feature-mask-to-disable-fractional-pwm.patch'
        # MANJARO Patches
        '0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch'
        '0002-apparmor-af_unix-mediation.patch'
        '0003-apparmor-fix-use-after-free-in-sk_peer_label.patch'
        '0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch'
        '0001-nonupstream-navi10-vfio-reset.patch'
        '0001-i2c-nuvoton-nc677x-hwmon-driver.patch'
        '0001-drm-i915-apply-219d543-till-5f71c84.patch'
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
sha256sums=('bf338980b1670bca287f9994b7441c2361907635879169c64ae78364efc5f491'
            'ff95ac79de6d23f5e87184d67f23ee0613707ed84b2fbe4280182ada2945dfda'
            '8e6dc31f5b76de3c398eef312b5c3423039b4bd1b3e7776542c409fd26d60a3c'
            'bfe52746bfc04114627b6f1e0dd94bc05dd94abe8f6dbee770f78d6116e315e8'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            'eb2de93799728d81b288e4d705c2194ed29da5b1316fab2ba01d1fcf6125d740'
            '452d88811439abbcdf728bc29d637e8f8193b6b65e66877994b944a008cd6483'
            '5e75a6227bcc67d1d22ab84f897d9b48b600c59530290988f6caa937f08f5c93'
            'c98e3f0b061c5ce7462f135af999aab4c8808ab02f08d3e7be9ece9bd42cbd8f'
            'aebc190f80fcc6add48cf6f0db20aba0600d700df9fe03b5ebfadd8359f4730f'
            '0f650de173629ac0dd0ee0106c77036f8d6a744bdf97999f3a88c57ecb5e37ee'
            'a5948d35cce73856200493a5e9d801ce2cabcb41f3dd471eef5dbef16ddf4616'
            '497055144417f07fd074cad7616b75105b9514c6cbfd169b0a3cf7cf21016d05'
            '7685d526bbdbfa795986591a70071c960ff572f56d3501774861728a9df8664c'
            '7baea65989ef0d29ab4eb8296759193b8f93c31248d08e944e1bdf0059ccdfdd'
            'abcf6043c594d5514118124a8f2cf8787557a95338fa0ff7f28a142567bafed0'
            '2431629465ca508a203df31ee14f614c061f6efc128ec858cecb4a3a2ee5f1d0'
            '25d72c2c88088d78afa1658fc16c8d4ad98f4140ec69fa0ade49abfe27e8f722'
            'fcb9e515bf0816db05446fd8ced7468756bea3cf01b060504bace41b2e7f5f74'
            'e2084feabc3abeed37579ff515c367014356a652b85794b1612fea4daabe85d3'
            '988ffbb96d85564a9d96145e5973339a8f78ae95d919efb2ee7bb50f7a8e8fc9'
            '5257159e20a5fcb102a3b3ee6de33882a9e132e7f1d4345b8730effdd0240bb6'
            '763cd8e7d5b4a5c24f7a82f24c64ec5503ea5c81dfb42fa74150136c0ca066fd'
            '33ec2170ace6b4f7dbc1cc751110d325d8619202d0f312587adbc4bef7a045ce'
            '11a29c93dad7f0eb54e18e3420b37fb4dc24a4053a982650d014797d6e27c6b1'
            '0f11af2c5c10e029ad5ac3e25dfaf1348cdfa398e8c62938937ee85eeb9d015b'
            'cba63c224af57d6b9432bb5f507121148d02b313c5f87c55504f49632a3a6062'
            '98202b8ad70d02d86603294bae967874fa7b18704b5c7b867568b0fd33a08921'
            '5cbbf3db9ea3205e9b89fe3049bea6dd626181db0cb0dc461e4cf5a400c68dd6'
            'c7dbec875d0c1d6782c037a1dcefff2e5bdb5fc9dffac1beea07dd8c1bdef1d7'
            '77746aea71ffb06c685e7769b49c78e29af9b2e28209cd245e95d9cbb0dba3c9'
            '7a2758f86dd1339f0f1801de2dbea059b55bf3648e240878b11e6d6890d3089c'
            '0556859a8168c8f7da9af8e2059d33216d9e5378d2cac70ca54c5ff843fa5add'
            '6d01b3eba214c4a17465a2adc2e770b57cbf782f30b291c36e5cd8a8efaa89f2'
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
  cd "${srcdir}/linux-${_basekernel}"

  # add upstream patch
  patch -p1 -i "${srcdir}/patch-${pkgver}"

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}.patch"

  # disable USER_NS for non-root users by default
  patch -Np1 -i ../0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch

  # fix dell xps 13 2-in-1 issue
  # https://lkml.org/lkml/2019/10/16/1230
  patch -Np1 -i '../0002-lib-devres-add-a-helper-function-for-ioremap_uc.patch'
  patch -Np1 -i '../0003-mfd-intel-lpss-use-devm_ioremap_uc-for-MMIO.patch'

  # https://twitter.com/vskye11/status/1216240051639791616
  patch -Np1 -i '../0001-i2c-nuvoton-nc677x-hwmon-driver.patch'

  # other fixes by Arch
  patch -Np1 -i '../0004-PCI-pciehp-prevent-deadlock-on-disconnect.patch'
  patch -Np1 -i '../0005-ACPI-PM-s2idle-rework-ACPI-events-sync.patch'
  patch -Np1 -i '../0006-iwlwifi-pcie-restore-support-for-Killer-Qu-C0-NICs.patch'
  patch -Np1 -i '../0007-drm-i915-save-AUD_FREQ_CNTRL-state-at-audio-domain-suspend.patch'
  patch -Np1 -i '../0008-drm-i915-Fix-audio-power-up-sequence-for-gen10-display.patch'
  patch -Np1 -i '../0009-drm-i915-extend-audio-CDCLK-2-BCLK-constraint-to-more-platforms.patch'
  patch -Np1 -i '../0010-drm-i915-limit-audio-CDCLK-constraint-back-to-GLK-only.patch'
  patch -Np1 -i '../0011-pinctrl-sunrisepoint-add-missing-interrupt-status-register-offset.patch'
  patch -Np1 -i '../0012-revert-iwlwifi-mvm-fix-scan-config-command-size.patch'
  patch -Np1 -i '../0013-Revert-e1000e-make-watchdog-use-delayed-work.patch'
  patch -Np1 -i '../0014-drm-amdgpu-add-dc-feature-mask-to-disable-fractional-pwm.patch'

  # https://bbs.archlinux.org/viewtopic.php?pid=1883376#p1883376
  # https://gitlab.manjaro.org/packages/core/linux54/issues/5
  patch -Np1 -i '../0001-drm-i915-apply-219d543-till-5f71c84.patch'

  # add patches for snapd
  # https://gitlab.com/apparmor/apparmor-kernel/tree/5.2-outoftree
  patch -Np1 -i "${srcdir}/0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch"
  patch -Np1 -i "${srcdir}/0002-apparmor-af_unix-mediation.patch"
  patch -Np1 -i "${srcdir}/0003-apparmor-fix-use-after-free-in-sk_peer_label.patch"
  patch -Np1 -i "${srcdir}/0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch"

  # TODO: remove when AMD properly fixes it!
  # INFO: this is a hack and won't be upstreamed
  # https://forum.level1techs.com/t/145666/86
  # https://forum.manjaro.org/t/107820/11
  patch -Np1 -i "${srcdir}/0001-nonupstream-navi10-vfio-reset.patch"

  # Add bootsplash - http://lkml.iu.edu/hypermail/linux/kernel/1710.3/01542.html
  patch -Np1 -i "${srcdir}/0001-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0002-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0003-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0004-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0005-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0006-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0007-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0008-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0009-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0010-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0011-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0012-bootsplash.patch"
  # use git-apply to add binary files
  git apply -p1 < "${srcdir}/0013-bootsplash.patch"

  # add aufs5 support
  patch -Np1 -i "${srcdir}/aufs5.4-${_aufs}.patch"
  patch -Np1 -i "${srcdir}/aufs5-base.patch"
  patch -Np1 -i "${srcdir}/aufs5-kbuild.patch"
  patch -Np1 -i "${srcdir}/aufs5-loopback.patch"
  patch -Np1 -i "${srcdir}/aufs5-mmap.patch"
  patch -Np1 -i "${srcdir}/aufs5-standalone.patch"
  patch -Np1 -i "${srcdir}/tmpfs-idr.patch"
  patch -Np1 -i "${srcdir}/vfs-ino.patch"

  if [ "${CARCH}" = "x86_64" ]; then
    cat "${srcdir}/config.x86_64" > ./.config
  else
    cat "${srcdir}/config" > ./.config
  fi

  cat "${srcdir}/config.aufs" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  # set patchlevel to 4
  sed -ri "s|^(PATCHLEVEL =).*|\1 4|" Makefile

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

package_linux54() {
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

package_linux54-headers() {
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
    case "$(file -bi ${_binary})" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)
}

_server=cx51
