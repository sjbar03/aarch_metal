DIR = build/

create_dir: 
	mkdir -p $(DIR)

all: create_dir hello.elf

hello.o : src/main.c
	aarch64-none-elf-gcc -c $< -o $(DIR)$@

start.o : src/start.S
	aarch64-none-elf-as -c $< -o $(DIR)$@

hello.elf : hello.o start.o
	aarch64-none-elf-ld -Tlinker.ld $(addprefix $(DIR), $^) -o $(DIR)$@

qemu: create_dir hello.elf
	qemu-system-aarch64 -machine virt -cpu cortex-a53 -nographic -serial mon:stdio -monitor none -kernel $(DIR)hello.elf

clean:
	rm -rf build/
