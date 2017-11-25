TARGET = axi_gp0_rw
CFLAGS = -g -Wall -lrt
LDFLAGS =  -g -Wall -lrt
CC = $(CROSS_COMPILE)gcc


build: $(TARGET)
$(TARGET): main.o
	$(CC) $(LDFLAGS)   $^ -o $@  
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~ 
