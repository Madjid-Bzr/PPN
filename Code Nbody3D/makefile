all: nbody.g nbody.g1 nbody.g2 nbody.g3 nbody.g4 nbody.g5

nbody.g: nbody.c
	gcc -g -mavx2 -Ofast -march=native -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g1: nbody1.c
	gcc  -mavx2 -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g2: nbody2.c
	gcc   -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp
nbody.g3: nbody3.c
	gcc   -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp
nbody.g4: nbody4.c
	gcc   -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g5: nbody5.c
	mpicc   -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

clean:
	rm -Rf *~ nbody.g nbody.g1 nbody.g2 nbody.g3 nbody.g4 nbody.g5 *.optrpt

