# for linux
CC=mpicc
#CFLAGS=-Wall -g -pg -march=native -Ofast -funroll-loops -fopt-info-vec-all -ftree-vectorize -fopt-info-inline-optimized
CFLAGS=-Wall -g
# for AIX
#CC=mpxlc

mpiBench : clean
	$(CC) $(CFLAGS) -o mpiBench mpiBench.c

clean :
	rm -f mpiBench *.o
