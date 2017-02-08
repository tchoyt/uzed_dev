#
TARGET = axi_gp0_rw

#
#ALT_DEVICE_FAMILY = soc_cv_av
#HW_LIBS_ROOT = ${SOCEDS_DEST_ROOT}/ip/altera/hps/altera_hps/hwlib/include/
#QSYS_HEADERS = ../headers/
#CFLAGS = -g -Wall  -I${QSYS_HEADERS} -I${HW_LIBS_ROOT} -I${HW_LIBS_ROOT}$(ALT_DEVICE_FAMILY) -D$(ALT_DEVICE_FAMILY)
CFLAGS = -g -Wall
LDFLAGS =  -g -Wall  
CC = $(CROSS_COMPILE)gcc


build: $(TARGET)
$(TARGET): main.o
	$(CC) $(LDFLAGS)   $^ -o $@  
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~ 
