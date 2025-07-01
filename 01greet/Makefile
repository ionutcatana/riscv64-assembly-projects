CC	:= riscv64-linux-gnu-gcc
BUILD	?= build
TARGET	?= greet
CFLAGS	?=
LDFLAGS	?= -static
SRCS    := $(shell find . -type f -name '*.S')
OBJS    := $(patsubst ./%, $(BUILD)/%, $(SRCS))
OBJS    := $(patsubst %.S,%.o, $(OBJS))

all: $(BUILD)/$(TARGET)

clean:
	rm -f $(OBJS) $(BUILD)/*

$(BUILD)/%.o: %.S
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/%.o: %.S
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD)/$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

qemu: $(BUILD)/$(TARGET)
	qemu-riscv64 -L /usr/riscv64-linux-gnu $(BUILD)/$(TARGET)

.PHONY: all clean qemu
