# RISC-V 64-bit Assembly Projects

This repository contains RISC-V 64-bit assembly language projects and examples.

## Prerequisites

1. **RISC-V GNU Toolchain**

   - Install the `riscv64-linux-gnu` cross-compilation toolchain
   - On Debian/Devuan: `sudo apt install gcc-riscv64-linux-gnu`

2. **QEMU User Mode Emulation**
   - Install QEMU with RISC-V user mode support
   - On Debian/Devuan: `sudo apt install qemu-user`

## Compilation

To compile your assembly projects:

```bash
make
```

## Execution

To run the compiled programs using QEMU emulation:

```bash
make qemu
```
