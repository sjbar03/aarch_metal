# Baremetal AArch64

    1. Run "make qemu" to build and run the kernel.

## Dependencies (For Linux)
    1. Install qemu-system-aarch64 (apt install qemu-system-aarch64)
    2. Install aarch64-none-elf toolchain (ARM Embedded Toolchain 64 Bit)

``` bash
wget https://developer.arm.com/-/media/Files/downloads/gnu/15.2.rel1/binrel/arm-gnu-toolchain-15.2.rel1-x86_64-aarch64-none-elf.tar.xz
tar -xvf arm-gnu-toolchain-15.2.rel1-x86_64-aarch64-none-elf.tar.xz
cd arm-gnu-toolchain-15.2.rel1-x86_64-aarch64-none-elf
export PATH=$(pwd)/bin:$PATH
```

## Notes