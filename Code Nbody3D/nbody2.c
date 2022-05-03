//
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

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
void init(particle_t p, u64 n)
{   
 
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
}

//
void move_particles(particle_t p, const f32 dt, u64 n)
{
  //
  const f32 softening = 1e-20;
 
  //
  
  for (u64 i = 0; i < n; i++)
    {
      //
      f32 fx = 0.0;
      f32 fy = 0.0;
      f32 fz = 0.0;

      
      
      for (u64 j = 0; j < n; j++)
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
    
  for (u64 i = 0; i < n; i+=4)
    {
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
}

//
int main(int argc, char **argv)
{
  //
  const u64 n = (argc > 1) ? atoll(argv[1]) : 225536;
  const u64 steps= 10;
  const f32 dt = 0.01;

  //
  f64 rate = 0.0, drate = 0.0;

  //Steps to skip for warm up
  const u64 warmup = 3;
  
    particle_t p;
    /*
    p.x = aligned_alloc(64, n * sizeof(f32));
    p.y = aligned_alloc(64, n * sizeof(f32));
    p.z = aligned_alloc(64, n * sizeof(f32));
    p.vx = aligned_alloc(64, n * sizeof(f32));
    p.vy = aligned_alloc(64, n * sizeof(f32));
    p.vz = aligned_alloc(64, n * sizeof(f32));*/

  double  *p_x = NULL; 
  double  *p_y = NULL;
  double  *p_z = NULL;
  double  *p_vx = NULL;
  double  *p_vy= NULL;
  double  *p_vz = NULL;
  int l = 0;
  l +=posix_memalign ((void **)  &p_x, 32, n* sizeof(particle_t));
  l +=posix_memalign ((void **)  &p_y, 32, n* sizeof(particle_t));
  l +=posix_memalign ((void **)  &p_z, 32, n* sizeof(particle_t));
  l +=posix_memalign ((void **)  &p_vx, 32, n* sizeof(particle_t));
  l +=posix_memalign ((void **)  &p_vy, 32, n* sizeof(particle_t));
  l +=posix_memalign ((void **)  &p_vz, 32, n* sizeof(particle_t));
  if ( l) return 1;
    p.x = __builtin_assume_aligned(p_x, 32);
    p.y = __builtin_assume_aligned(p_y, 32);
    p.z = __builtin_assume_aligned(p_z, 32);
    p.vx = __builtin_assume_aligned(p_vx, 32);
    p.vy = __builtin_assume_aligned(p_vy, 32);
    p.vz = __builtin_assume_aligned(p_vz, 32);
  


  //
  srand(0);
  init(p, n);

  const u64 s = sizeof(particle_t) * n;
  
  printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
  printf("n= %llu \n",n);
  //
  printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s"); fflush(stdout);
  
  //
  for (u64 i = 0; i < steps; i++)
    {
      //Measure
      const f64 start = omp_get_wtime();

      move_particles(p, dt, n);

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

      //
      printf("%5llu %10.3e %10.3e %8.1f %s\n",
       i,
       (end - start),
       h1 * (1/(end - start)),
       h2 * (1/(end - start)),
       (i < warmup) ? "*" : "");
      
      fflush(stdout);
    }

  //
  rate = rate * (1 /(f64)(steps - warmup));
  drate = sqrtf(drate *(1/ (f64)(steps - warmup)) - (rate * rate));

  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
   "Average performance:", "", rate, drate);
  printf("-----------------------------------------------------\n");
  
  //
 
  free(p.x);
  free(p.y);
  free(p.z);
  free(p.vx);
  free(p.vy);
  free(p.vz);
 
  
     

  //
  return 0;
}

