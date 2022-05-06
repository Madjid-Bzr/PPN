all: nbody  nbody_opt nbody_omp nbody_pthread nbody_mpi nbody_hybrid

nbody: nbody.c
	gcc -g -mavx2 -Ofast -march=native -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody_opt: nbody_opt.c
	gcc -g -Ofast -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp
nbody_omp: nbody_omp.c
	gcc -g -Ofast -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp
nbody_pthread: nbody_pthread.c
	gcc -g -Ofast -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody_mpi: nbody_mpi.c
	mpicc -g -Ofast -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody_hybrid: nbody_hybrid.c
	mpicc -g -Ofast -funroll-loops -march=native -mtune=generic -finline-functions -fno-omit-frame-pointer -ftree-vectorize -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp


run: 
	./nbody 16384
	./nbody_opt 16384
	./nbody_omp 16384
	./nbody_pthread 16384
	mpirun -np 4 ./nbody_mpi 16384
	mpirun -np 4 ./nbody_hybrid 16384
clean:
	rm -Rf *~ nbody nbody_opt nbody_omp nbody_pthread nbody_mpi nbody_hybrid *.optrpt 

