          ln -s /opt/X11/include qemu/roms/edk2/EmulatorPkg/Unix/Host/X11IncludeHack
          ln -s build-ubuntu-latest.sh qemu/roms/skiboot/opal-ci/build-debian-unstable.sh
          ln -s build-fedora33.sh qemu/roms/skiboot/opal-ci/build-fedora-rawhide.sh
          ln -s zynq-zc770-xm011 qemu/roms/u-boot/board/xilinx/zynq/zynq-cse-nand
          ln -s zynqmp-zcu100-revC qemu/roms/u-boot/board/xilinx/zynqmp/avnet-ultra96-rev1
          ln -s zynqmp-a2197-revA qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-g-a2197-00-revA
          ln -s zynqmp-a2197-revA qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-m-a2197-01-revA
          ln -s zynqmp-a2197-revA qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-m-a2197-03-revA
          ln -s zynqmp-zcu102-rev1.0 qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-mini
          ln -s zynqmp-zcu100-revC qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-mini-emmc0
          ln -s zynqmp-zcu102-rev1.0 qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-mini-emmc1
          ln -s zynqmp-zcu102-rev1.0 qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-mini-qspi
          ln -s zynqmp-a2197-revA qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-p-a2197-00-revA
          ln -s zynqmp-zcu104-revA qemu/roms/u-boot/board/xilinx/zynqmp/zynqmp-zcu104-revC
          ln -s linux/ctype.h qemu/roms/u-boot/include/ctype.h
          ln -s main.py qemu/roms/u-boot/tools/binman/binman
          ln -s main.py qemu/roms/u-boot/tools/dtoc/dtoc
          ln -s microcode-tool.py qemu/roms/u-boot/tools/microcode-tool
          ln -s main.py qemu/roms/u-boot/tools/patman/patman
          ln -s centos-stream-8-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/almalinux-8-prep.sh
          ln -s alpine-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/alpine-317-prep.sh
          ln -s alpine-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/alpine-edge-prep.sh
          ln -s fedora-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/fedora-37-prep.sh
          ln -s fedora-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/fedora-38-prep.sh
          ln -s fedora-prep.sh qemu/tests/lcitool/libvirt-ci/ci/gitlab/all_mappings_prep_env/fedora-rawhide-prep.sh
