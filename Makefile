all: 2021298_Assgnmt_1

2021298_Assgnmt_1: 2021298_Assgnmt_1.asm
	yasm -f elf64 2021298_Assgnmt_1.asm -o 2021298_Assgnmt_1.o
	gcc -no-pie 2021298_Assgnmt_1.o -o assgnmt

clean:
	rm *.o

 
