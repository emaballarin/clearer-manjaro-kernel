# Based on the file created for Manjaro Linux by:
# Philip Müller (x86_64) <philm@manjaro.org>
# Jonathon Fernyhough (i686) <jonathon@manjaro.org>
# Helmut Stult <helmut[at]manjaro[dot]org>

# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer: Emanuele Ballarin (Clearer Manjaro x86_64) <emanuele@ballarin.cc>
# And many other contributors (patches, suggestions, development, testing, ...)


pkgbase=linux55-CLEARER
pkgname=('linux55-CLEARER' 'linux55-CLEARER-headers')
_kernelname=-CLEARER
_basekernel=5.5
_basever=55
_aufs=20200127
_sub=2
_wireguard=0.0.20200128
_ALREADYMERGED=1
_CLEARERrel=14
pkgver=${_basekernel}.${_sub}
pkgrel=1
arch=('i686' 'x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git')
options=('!strip')
source=("https://www.kernel.org/pub/linux/kernel/v5.x/linux-${_basekernel}.tar.xz"
        "https://www.kernel.org/pub/linux/kernel/v5.x/patch-${pkgver}.xz"
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
        '0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch'
        '0002-iwlwifi-pcie-restore-support-for-Killer-Qu-C0-NICs.patch'
        '0003-btrfs-send-fix-emission-of-invalid-clone-operations-within-the-same-file.patch'
        # MANJARO Patches
        '0001-apparmor-patch-to-provide-compatibility-with-v2-net-rules.patch'
        '0002-apparmor-af_unix-mediation.patch'
        '0003-apparmor-fix-use-after-free-in-sk_peer_label.patch'
        '0004-apparmor-fix-apparmor-mediating-locking-non-fs-unix-sockets.patch'
        '0001-nonupstream-navi10-vfio-reset.patch'
        '0001-i2c-nuvoton-nc677x-hwmon-driver.patch'
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
        '0013-bootsplash.patch'
        ## NVIDIA MEMORY COMPACTION PATCH (11/2019)
        'mmgupta.patch'
        ## Samsung exFAT
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/exfat-patches/0001-exfat-patches.patch"
        ## Intel Uncore Frequency driver
        'inteluf_01.patch'
        'inteluf_02.patch'
        ## Intel ISST fixes
        'isst_01.patch'
        'isst_02.patch'
        'isst_03.patch'
        'isst_04.patch'
        'isst_05.patch'
        ## POSTFACTUM - EXPOSE KSM INTERFACE
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/ksm-patches/0001-ksm-patches.patch"
        ## CUSTOM PATCHES - PIECES OF XANMOD
        "https://ballarin.cc/patchwork/pieces_of_xanmod.patch"
        ## POSTFACTUM - O3 ALWAYS ON
        "postfactumothree.patch::https://gitlab.com/post-factum/pf-kernel/commit/cf7a8ad26e0bd6ca8afba89f53d2e9dc43ee2598.patch"
        ## VALVE - MULTIPLE FUTEX
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/futex-patches-v2/0001-futex-Add-support-for-multiple-keys-at-the-same-time.patch"
        ## CUSTOM PATCHES - STUN
        "https://ballarin.cc/patchwork/00004-manjaro-stun-tickat600.patch"
        "https://ballarin.cc/patchwork/00005-manjaro-stun-tcpcake.patch"
        ## BFQ Lucjan
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/block-patches-sep/0001-block-Kconfig.iosched-set-default-value-of-IOSCHED_B.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/block-patches-sep/0002-block-Fix-depends-for-BLK_DEV_ZONED.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/bfq-dev-lucjan/5.5-bfq-dev-lucjan-v11-r2K200203.patch"
        ## Zen Lucjan
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/zen-patches-sep/0002-ZEN-intel-pstate-Implement-enable-parameter.patch"
        ## CLEAR CVEs
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/CVE-2019-12379.patch"
        ## SCSI LUCJAN
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/scsi-patches-sep/0001-scsi-sd-block-Fix-regressions-in-read-only-block-dev.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/scsi-patches-sep/0002-scsi-sd-block-Update-fix-regressions-in-read-only-bl.patch"
        ## CLEAR SERIES
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0051-rcu-nocb-Fix-dump_tree-hierarchy-print-always-active.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0101-i8042-decrease-debug-message-level-to-info.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0102-Increase-the-ext4-default-commit-age.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0103-silence-rapl.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0104-pci-pme-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0105-ksm-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0106-intel_idle-tweak-cpuidle-cstates.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0108-smpboot-reuse-timer-calibration.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0109-raid6-add-Kconfig-option-to-skip-raid6-benchmarking.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0110-Initialize-ata-before-graphics.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0111-give-rdrand-some-credit.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0112-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0113-kernel-time-reduce-ntp-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0114-init-wait-for-partition-and-retry-scan.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0118-Migrate-some-systemd-defaults-to-the-kernel-defaults.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0119-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0120-add-scheduler-turbo3-patch.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0121-use-lfence-instead-of-rep-and-nop.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0122-do-accept-in-LIFO-order-for-cache-efficiency.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0124-locking-rwsem-spin-faster.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0125-ata-libahci-ignore-staggered-spin-up.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0127-x86-microcode-Force-update-a-uCode-even-if-the-rev-i.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0128-x86-microcode-echo-2-reload-to-force-load-ucode.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0129-fix-bug-in-ucode-force-reload-revision-check.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0130-add-workaround-for-binutils-optimization.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0131-nvme-workaround.patch"
        ## LUCJAN MISC
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/zen-patches-sep/0001-ZEN-Add-VHBA-driver.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/hwmon-patches/0001-hwmon-Driver-for-disk-and-solid-state-drives-with-te.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/fixes-miscellaneous-v4-sep/0002-infiniband-Fix-__read_overflow2-error-with-O3-inlini.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/fixes-miscellaneous-v4-sep/0005-kbuild-reuse-intermediate-linker-scripts-in-the-fina.patch"
        "https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/5.5/fixes-miscellaneous-v4-sep/0007-ALSA-hda-Fix-DP-MST-support-for-NVIDIA-codecs.patch"
        ## SCHEDULER - BMQ
        "https://gitlab.com/alfredchen/bmq/raw/master/5.5/bmq_v5.5-r1.patch"
        ## GRAYSKY2 GCC OPTIMIZATIONS
        "grayskygcc.patch::https://raw.githubusercontent.com/graysky2/kernel_gcc_patch/master/enable_additional_cpu_optimizations_for_gcc_v9.1%2B_kernel_v5.5%2B.patch"
        ## Wireguard - Kernel autopatcher
        "https://git.zx2c4.com/wireguard-linux-compat/snapshot/wireguard-linux-compat-${_wireguard}.tar.xz")

sha256sums=('a6fbd4ee903c128367892c2393ee0d9657b6ed3ea90016d4dc6f1f6da20b2330'
            '07cbd21a049b0bf5a96d7e0b8272db8e53e9947f0eff06fa2a765bb3b34bc8fa'
            # x86_64 config -->
            'SKIP'
            'bfe52746bfc04114627b6f1e0dd94bc05dd94abe8f6dbee770f78d6116e315e8'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            '5140f290d76b35a06e13b431f72f7049c07c46cd12f985777e0b0bcb613f1104'
            'd23d429e2a843d8b1c503480b650f59c9e2273e1907e927132e086dfc133616c'
            'a5533120455c6490a75f06f5fc24b861ed2df503c980fa5548b5caa2f7984f13'
            '02211d7d11883e30a7a90fc4e1eb4c4d9391fa636f717fb7061ba48d26630ac4'
            '9bd2ec4fd05a993f140720d51d02ff7032c824fafcfb8d5dbd47272187534656'
            '32caef5516e4d1d70cdb98a66011d70b5955aea0a19b525c46d914d7a35de0d5'
            'c9796feddec29b332602bee218e8d3e5b629523b40314eeab078f415b96d1322'
            'c95cc6bc798978e29125c49ab613959c939ab7cf505142e968025373f4ffb9d5'
            '7685d526bbdbfa795986591a70071c960ff572f56d3501774861728a9df8664c'
            'fcb9e515bf0816db05446fd8ced7468756bea3cf01b060504bace41b2e7f5f74'
            '8edcc9a2623babfc0e4c808a18592bdd1c250f3e638217800b2aa9823ae52dc7'
            '98202b8ad70d02d86603294bae967874fa7b18704b5c7b867568b0fd33a08921'
            '5cbbf3db9ea3205e9b89fe3049bea6dd626181db0cb0dc461e4cf5a400c68dd6'
            'c7dbec875d0c1d6782c037a1dcefff2e5bdb5fc9dffac1beea07dd8c1bdef1d7'
            '77746aea71ffb06c685e7769b49c78e29af9b2e28209cd245e95d9cbb0dba3c9'
            '7a2758f86dd1339f0f1801de2dbea059b55bf3648e240878b11e6d6890d3089c'
            '0556859a8168c8f7da9af8e2059d33216d9e5378d2cac70ca54c5ff843fa5add'
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
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef'
            ##
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP')
prepare() {
  cd "${srcdir}/linux-${_basekernel}"

  ### START OF PATCHES ###
  echo " "
  echo "PATCH: Kernel upstream"
  # add upstream patch
  patch -p1 -i "${srcdir}/patch-${pkgver}"
  echo " "

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}.patch"

  ## CLEARER MANJARO: New exFAT drivers by Samsung
  echo " "
  echo "PATCH: Samsung exFAT drivers"
  patch -Np1 -i ../0001-exfat-patches.patch
  echo " "

  ## Intel ISST fixes
  echo " "
  echo "PATCH: Intel ISST fixes"
  patch -Np1 -i ../isst_01.patch
  patch -Np1 -i ../isst_02.patch
  patch -Np1 -i ../isst_03.patch
  patch -Np1 -i ../isst_04.patch
  patch -Np1 -i ../isst_05.patch
  echo " "

  ## Zen Lucjan
  echo " "
  echo "PATCH: Explicit PSTATE parameter"
  patch -Np1 -i ../0002-ZEN-intel-pstate-Implement-enable-parameter.patch
  echo " "

  ## Intel Uncore Frequency driver
  echo " "
  echo "PATCH: Intel UnCore frequency driver"
  patch -Np1 -i ../inteluf_01.patch
  patch -Np1 -i ../inteluf_02.patch
  echo " "

  ## CLEARER MANJARO: PIECES OF XANMOD
  echo " "
  echo "PATCH: Pieces of XanMod"
  patch -Np1 -i ../pieces_of_xanmod.patch
  echo " "

  ## CLEARER MANJARO: STUN PATCHES
  echo " "
  echo "PATCH: STUN patches"
  patch -Np1 -i ../00004-manjaro-stun-tickat600.patch
  patch -Np1 -i ../00005-manjaro-stun-tcpcake.patch
  echo " "

  ## CLEARER MANJARO - MMGUPTA MEMORY MERGING
  echo " "
  echo "PATCH: Proactive memory compaction"
  patch -Np1 -i ../mmgupta.patch
  echo " "

  ## CLEARER MANJARO - KSM (NATALENKO)
  echo " "
  echo "PATCH: PostFactum KSM"
  patch -Np1 -i ../0001-ksm-patches.patch
  echo " "

  ## CLEARER MANJARO: POSTFACTUM O3 ALWAYS ON
  echo " "
  echo "PATCH: Always-on -O3"
  patch -Np1 -i ../postfactumothree.patch
  echo " "

  ## CLEARER MANJARO: FUTEX WAIT MULTIPLE (VALVE)
  echo " "
  echo "PATCH: Multiple FutEx"
  patch -Np1 -i ../0001-futex-Add-support-for-multiple-keys-at-the-same-time.patch
  echo " "

  ## CLEARER MANJARO: BFQ PATCHES
  echo " "
  echo "PATCH: BFQ development branch"
  patch -Np1 -i ../0001-block-Kconfig.iosched-set-default-value-of-IOSCHED_B.patch
  patch -Np1 -i ../0002-block-Fix-depends-for-BLK_DEV_ZONED.patch
  patch -Np1 -i ../5.5-bfq-dev-lucjan-v11-r2K200203.patch
  echo " "

  echo " "
  echo "PATCH: Manjaro defaults"
  # disable USER_NS for non-root users by default
  patch -Np1 -i ../0001-ZEN-Add-sysctl-and-CONFIG-to-disallow-unprivileged-CLONE_NEWUSER.patch

  # other fixes by Arch
  patch -Np1 -i '../0002-iwlwifi-pcie-restore-support-for-Killer-Qu-C0-NICs.patch'
  patch -Np1 -i '../0003-btrfs-send-fix-emission-of-invalid-clone-operations-within-the-same-file.patch'

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
  patch -Np1 -i "${srcdir}/aufs5.x-rcN-${_aufs}.patch"
  patch -Np1 -i "${srcdir}/aufs5-base.patch"
  patch -Np1 -i "${srcdir}/aufs5-kbuild.patch"
  patch -Np1 -i "${srcdir}/aufs5-loopback.patch"
  patch -Np1 -i "${srcdir}/aufs5-mmap.patch"
  patch -Np1 -i "${srcdir}/aufs5-standalone.patch"
  patch -Np1 -i "${srcdir}/tmpfs-idr.patch"
  patch -Np1 -i "${srcdir}/vfs-ino.patch"
  echo " "

  ## CLEARER MANJARO: CLEAR CVE FIXES
  echo " "
  echo "PATCH: CVE fixes from Intel"
  patch -Np1 -i ../CVE-2019-12379.patch
  echo " "

  ## LUCJAN MISC
  echo " "
  echo "PATCH: Miscellaneous Fixes by SirLucjan"
  patch -Np1 -i ../0001-ZEN-Add-VHBA-driver.patch
  patch -Np1 -i ../0001-hwmon-Driver-for-disk-and-solid-state-drives-with-te.patch
  patch -Np1 -i ../0002-infiniband-Fix-__read_overflow2-error-with-O3-inlini.patch
  patch -Np1 -i ../0005-kbuild-reuse-intermediate-linker-scripts-in-the-fina.patch
  patch -Np1 -i ../0007-ALSA-hda-Fix-DP-MST-support-for-NVIDIA-codecs.patch
  echo " "

  ## SCSI LUCJAN
  echo " "
  echo "PATCH: SCSI Fixes by SirLucjan"
  patch -Np1 -i ../0001-scsi-sd-block-Fix-regressions-in-read-only-block-dev.patch
  patch -Np1 -i ../0002-scsi-sd-block-Update-fix-regressions-in-read-only-bl.patch
  echo " "

  ## CLEARER MANJARO: CLEAR SERIES PATCHES
  echo " "
  echo "PATCH: Clear Linux patches"
  patch -Np1 -i ../0051-rcu-nocb-Fix-dump_tree-hierarchy-print-always-active.patch
  patch -Np1 -i ../0101-i8042-decrease-debug-message-level-to-info.patch
  patch -Np1 -i ../0102-Increase-the-ext4-default-commit-age.patch
  patch -Np1 -i ../0103-silence-rapl.patch
  patch -Np1 -i ../0104-pci-pme-wakeups.patch
  patch -Np1 -i ../0105-ksm-wakeups.patch
  patch -Np1 -i ../0106-intel_idle-tweak-cpuidle-cstates.patch
  patch -Np1 -i ../0108-smpboot-reuse-timer-calibration.patch
  patch -Np1 -i ../0109-raid6-add-Kconfig-option-to-skip-raid6-benchmarking.patch
  patch -Np1 -i ../0110-Initialize-ata-before-graphics.patch
  patch -Np1 -i ../0111-give-rdrand-some-credit.patch
  patch -Np1 -i ../0112-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch
  patch -Np1 -i ../0113-kernel-time-reduce-ntp-wakeups.patch
  patch -Np1 -i ../0114-init-wait-for-partition-and-retry-scan.patch
  patch -Np1 -i ../0118-Migrate-some-systemd-defaults-to-the-kernel-defaults.patch
  patch -Np1 -i ../0119-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch
  #patch -Np1 -i ../0120-add-scheduler-turbo3-patch.patch # Incompatible
  patch -Np1 -i ../0121-use-lfence-instead-of-rep-and-nop.patch
  patch -Np1 -i ../0122-do-accept-in-LIFO-order-for-cache-efficiency.patch
  patch -Np1 -i ../0124-locking-rwsem-spin-faster.patch
  patch -Np1 -i ../0125-ata-libahci-ignore-staggered-spin-up.patch
  patch -Np1 -i ../0127-x86-microcode-Force-update-a-uCode-even-if-the-rev-i.patch
  patch -Np1 -i ../0128-x86-microcode-echo-2-reload-to-force-load-ucode.patch
  patch -Np1 -i ../0129-fix-bug-in-ucode-force-reload-revision-check.patch
  #patch -Np1 -i ../0130-add-workaround-for-binutils-optimization.patch
  patch -Np1 -i ../0131-nvme-workaround.patch
  echo " "

  # WireGuard AutoPatcher
  echo " "
  echo "PATCH: Wireguard"
  _prewg_curdir="$(pwd)"
  cd "${srcdir}/wireguard-linux-compat-${_wireguard}/kernel-tree-scripts/"
  _wg_ker_calldir="$(pwd)"
  cd "${srcdir}/linux-${_basekernel}/"
  "$_wg_ker_calldir/create-patch.sh" > ./wgpatch.patch
  patch -p1 -i ./wgpatch.patch
  rm ./wgpatch.patch
  cd "$_prewg_curdir"
  echo " "

  ## CLEARER MANJARO: BMQ SCHEDULER
  echo " "
  echo "PATCH: BMQ scheduler"
  patch -Np1 -i ../bmq_v5.5-r1.patch
  echo " "

  ## CLEARER MANJARO: GRAYSKY2 GCC OPTIMIZATIONS
  echo " "
  echo "PATCH: GraySky"
  patch -Np1 -i ../grayskygcc.patch
  echo " "

  ### END OF PATCHES ###

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

  # set extraversion to pkgrel
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

  # don't run depmod on 'make install'. We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh

  # get kernel version
  make prepare -j12

  # load configuration
  # Configure the kernel. Replace the line below with one of your choice.
  #make menuconfig # CLI menu for configuration
  #make nconfig # new CLI menu for configuration
  #make xconfig # X-based configuration
  #make oldconfig # using old config from previous kernel version
  # ... or manually edit .config

  # rewrite configuration
  yes "" | make config -j12 >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  # build!
  make ${MAKEFLAGS} -j12 LOCALVERSION= bzImage modules
}

package_linux55-CLEARER() {
  pkgdesc="The ${pkgbase/linux/Linux} kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=27')
  optdepends=('crda: to set the correct wireless channels of your country' 'wireguard-tools: to use the Wireguard module included')
  provides=("linux55" "linux=${pkgver}" "WIREGUARD-MODULE")
  conflicts=("linux55")

  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make -j12 LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make -j12 LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" modules_install

  # systemd expects to find the kernel here to allow hibernation
  # https://github.com/systemd/systemd/commit/edda44605f06a41fb86b7ab8128dcf99161d2344
  cp arch/$KARCH/boot/bzImage "${pkgdir}/usr/lib/modules/${_kernver}/vmlinuz"

  # Used by mkinitcpio to name the kernel
  echo "${pkgbase}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/pkgbase"
  echo "${_basekernel}-${CARCH}" | install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_kernver}/kernelbase"

  # add kernel version
  if [ "${CARCH}" = "x86_64" ]; then
     echo "${pkgver}-${pkgrel}-CLEARER x64" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  else
     echo "${pkgver}-${pkgrel}-CLEARER x32" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  fi

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--CLEARER}"
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

package_linux55-CLEARER-headers() {
  pkgdesc="Header files and scripts for building modules for ${pkgbase/linux/Linux} kernel"
  provides=("linux55-headers" "linux-headers=$pkgver")
  conflicts=("linux55-headers")

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
