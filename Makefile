obj-m +=filter.o

all:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
		    rm Module.symvers
install:
	    /sbin/insmod filter.ko
remove:
	    /sbin/rmmod filter
