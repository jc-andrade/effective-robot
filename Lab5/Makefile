TARGET	= lab5
ASRCS	= lab5.asm
OBJS	= $(ASRCS:.asm=.o)
NFLAGS	= -f elf64

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
	gcc -o $(TARGET) $(OBJS)

%.o:	%.asm
	nasm -g $(NFLAGS) $< -o $@


.PHONY:
clean:
	rm $(TARGET) $(OBJS)

