# RISC-V 64-bit Assembly Projects

This repository contains RISC-V 64-bit assembly language projects and examples.

## Prerequisites

Before you can build and run these projects, you need to have the following tools installed:

### Required Tools

1. **RISC-V GNU Toolchain**
   - Install the `riscv64-linux-gnu` cross-compilation toolchain
   - On Ubuntu/Debian: `sudo apt install gcc-riscv64-linux-gnu`
   - On other systems, you may need to build from source or use package managers like `brew` on macOS

2. **QEMU User Mode Emulation**
   - Install QEMU with RISC-V user mode support
   - On Ubuntu/Debian: `sudo apt install qemu-user`
   - On other systems: Install QEMU through your package manager

## Basic Workflow

### Compilation
To compile your assembly projects:
```bash
make
```

### Execution
To run the compiled programs using QEMU emulation:
```bash
make qemu
```

## Project Structure

Each project should include:
- Assembly source files (`.s` or `.S`)
- Makefile for build configuration
- Any additional documentation specific to the project

## Getting Started

1. Ensure all prerequisites are installed
2. Navigate to a project directory
3. Run `make` to compile
4. Run `make qemu` to execute

Happy coding with RISC-V assembly! 🚀
