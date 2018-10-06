AS=fusion-elf-as
LD=fusion-elf-ld
LDFLAGS=-nostdlib -T linker.ld

OBJ=start.o main.o
PRGNAME=boot.elf

.SUFFIXES: .o .S

all: link

link: $(OBJ)
	$(LD) $(LDFLAGS) $(OBJ) -o $(PRGNAME)

.S.o: 
	$(AS) $< -o $@

clean:
	rm -rf *.o

distclean:
	rm -rf *.o $(PRGNAME)
