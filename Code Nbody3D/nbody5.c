//
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
//
typedef float              f32;
typedef double             f64;
typedef unsigned long long u64;

//
typedef struct particle_s {

  f32 *x, *y, *z;
  f32 *vx, *vy, *vz;
  
} particle_t;

//


//
void move_particles(particle_t p, const u64 nb_particles, const f32 dt, const int mpi_rank, const int mpi_world_size, u64 particles)
{
  //
    
    const int start_particle = mpi_rank * particles;
    const int end_particle = (mpi_rank + 1) * particles;

  const f32 softening = 1e-20;
 
  //
  #pragma omp parallel for
  for (int i = 0; i < nb_particles; i++)
    {
      //
      f32 fx = 0.0;
      f32 fy = 0.0;
      f32 fz = 0.0;

      
      #pragma omp simd
      for (u64 j = 0; j < nb_particles; j++)
  {
    //Newton's law
    const f32 dx = p.x[j] - p.x[i]; //1
    const f32 dy = p.y[j] - p.y[i]; //2
    const f32 dz = p.z[j] - p.z[i]; //3
    const f32 d_2 = (dz * dz) + softening;
   const f32 d_3= (dx *dx)+d_2;
   const f32 d_4=(dy *dy)+d_3;
    const f32 t=sqrtf(d_4);
    
    const f32 d_3_over_2 = 1.0f/(d_4*t); //11
    

    //Net force
    fx += (dx * d_3_over_2); //13
    fy += (dy * d_3_over_2); //15
    fz += (dz * d_3_over_2); //17
  }
  

      //
      p.vx[i] += (dt * fx); //19
      p.vy[i] += (dt * fy); //21
      p.vz[i] += (dt * fz); //23
    }

  //3 floating-point operations
  #pragma omp parallel for  
  for (u64 i = 0; i < nb_particles; i+=4)
    {
      //
      p.x[i] += (dt * p.vx[i]);
      p.y[i] += (dt * p.vy[i]);
      p.z[i] += (dt * p.vz[i]);

      p.x[i+1] += (dt * p.vx[i+1]);
      p.y[i+1] += (dt * p.vy[i+1]);
      p.z[i+1] += (dt * p.vz[i+1]);

      p.x[i+2] += (dt * p.vx[i+2]);
      p.y[i+2] += (dt * p.vy[i+2]);
      p.z[i+2] += (dt * p.vz[i+2]);

            p.x[i+3] += (dt * p.vx[i+3]);
      p.y[i+3] += (dt * p.vy[i+3]);
      p.z[i+3] += (dt * p.vz[i+3]);
    }
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.x, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.y, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.z, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vx, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vy, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vz, particles, MPI_FLOAT, MPI_COMM_WORLD);
}

//
int main(int argc, char **argv)
{
  //Initialisation MPI
  MPI_Init((int*)&argc, (char***)&argv);
  int mpi_world_size, mpi_rank;
  MPI_Comm_size(MPI_COMM_WORLD, &mpi_world_size);
  MPI_Comm_rank(MPI_COMM_WORLD, &mpi_rank);

  const u64 n = (argc > 1) ? atoll(argv[1]) : 26244;
  const int particles = n / mpi_world_size;
  const u64 steps= 10;
  const f32 dt = 0.01;

  //
  f64 rate = 0.0, drate = 0.0;

  //Steps to skip for warm up
  const u64 warmup = 3;
  
    particle_t p;

    p.x = aligned_alloc(64, n * sizeof(f32));
    p.y = aligned_alloc(64, n * sizeof(f32));
    p.z = aligned_alloc(64, n * sizeof(f32));
    p.vx = aligned_alloc(64, n * sizeof(f32));
    p.vy = aligned_alloc(64, n * sizeof(f32));
    p.vz = aligned_alloc(64, n * sizeof(f32));



  //
  srand(0);
   for (u64 i = 0; i < n; i+=4)
    {
      //
      u64 r1 = (u64)rand();
      u64 r2 = (u64)rand();
      f32 sign = (r1 > r2) ? 1 : -1;
      
      //
      p.x[i] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.y[i] = (f32)rand() * (1/(f32)RAND_MAX);
      p.z[i] = sign * (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.vx[i] = (f32)rand() * (1/(f32)RAND_MAX);
      p.vy[i] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.vz[i]= (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.x[i+1] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.y[i+1] = (f32)rand() * (1/(f32)RAND_MAX);
      p.z[i+1] = sign * (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.vx[i+1] = (f32)rand() * (1/(f32)RAND_MAX);
      p.vy[i+1] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.vz[i+1]= (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.x[i+2] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.y[i+2] = (f32)rand() * (1/(f32)RAND_MAX);
      p.z[i+2] = sign * (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.vx[i+2] = (f32)rand() * (1/(f32)RAND_MAX);
      p.vy[i+2] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.vz[i+2]= (f32)rand() * (1/(f32)RAND_MAX);


      //
      p.x[i+3] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.y[i+3] = (f32)rand() * (1/(f32)RAND_MAX);
      p.z[i+3] = sign * (f32)rand() * (1/(f32)RAND_MAX);

      //
      p.vx[i+3] = (f32)rand() * (1/(f32)RAND_MAX);
      p.vy[i+3] = sign * (f32)rand() * (1/(f32)RAND_MAX);
      p.vz[i+3]= (f32)rand() * (1/(f32)RAND_MAX);
    }


    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.x, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.y, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.z, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vx, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vy, particles, MPI_FLOAT, MPI_COMM_WORLD);
    MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vz, particles, MPI_FLOAT, MPI_COMM_WORLD);

    if (mpi_rank == 0) {
        const u64 num_threads = omp_get_max_threads();
        printf("\nPropagating %llu particles using %lld threads, distributed across %d nodes on %s...\n\n",
               n, num_threads, mpi_world_size, "CPU");
        printf("\033[1m%5s %10s %10s %8s\033[0m\n",
               "Iter", "Time (s)", "Interact/s", "GFLOP/s");
        fflush(stdout);
    }
/*
  const u64 s = sizeof(particle_t) * particles;
  
  printf("\n\033[1mTotal memory size:\033[0m %llu B, %  llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
  printf("n= %u \n",particles);
  //
  printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s"); fflush(stdout);
  */
  //
  for (u64 i = 0; i < steps; i++)
    {
      //Measure
      const f64 start = omp_get_wtime();

      move_particles(p, n, dt ,mpi_rank, mpi_world_size, particles);

      const f64 end = omp_get_wtime();

      //Number of interactions/iterations
      const f32 h1 = (f32)(n) * (f32)(n - 1);

      //GFLOPS
      const f32 h2 = ((23.0 * h1) + (3.0 * (f32)n)) * 1e-9;
      
      if (i >= warmup)
  {
    rate += (h2 * (1/(end - start)));
    drate += ((h2 * h2) * (1/((end - start) * (end - start))));
  }
   if (mpi_rank == 0) {
      //
      printf("%5llu %10.3e %10.3e %8.1f %s\n",
       i,
       (end - start),
       h1 * (1/(end - start)),
       h2 * (1/(end - start)),
       (i < warmup) ? "*" : "");
   } 
      fflush(stdout);
    }

  //
  rate = rate * (1 /(f64)(steps - warmup));
  drate = sqrtf(drate *(1/ (f64)(steps - warmup)) - (rate * rate));
if (mpi_rank == 0) {
  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
   "Average performance:", "", rate, drate);
  printf("-----------------------------------------------------\n");
  f64 somme_x=0, somme_y=0, somme_z=0, somme_vx=0, somme_vy=0, somme_vz=0;
  for(int i=0;i<n; i++){
    somme_x+=p.x[i];
    somme_y+=p.y[i];
    somme_z+=p.z[i];
    somme_vx+=p.vx[i];
    somme_vy+=p.vy[i];
    somme_vz+=p.vz[i];

  }
  printf("Somme X = %f \n",somme_x);
  printf("Somme Y = %f \n",somme_y);
  printf("Somme Z = %f \n",somme_z);
  printf("Somme VX = %f \n",somme_vx);
  printf("Somme VY = %f \n",somme_vy);
  printf("Somme VZ = %f \n",somme_vz);
  //
}
  free(p.x);
  free(p.y);
  free(p.z);
  free(p.vx);
  free(p.vy);
  free(p.vz);
 
  
     

  //
  MPI_Finalize();
  return 0;
}
