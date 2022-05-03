//
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define NB_PTHREADS 8
//
typedef float f32;
typedef double f64;
typedef unsigned long long u64;

//
typedef struct particle_s
{

  f32 *x, *y, *z;
  f32 *vx, *vy, *vz;

} particle_t;

typedef struct srtuct_1
{

  particle_t *p;
  u64 o;
  u64 n;

} srtuct_1;

//
void *init(void *arg)
{
  srtuct_1 *une = (srtuct_1 *)arg;

  for (u64 i = une->o; i < une->o + une->n; i += 4)
  {

    u64 r1 = (u64)rand();
    u64 r2 = (u64)rand();
    f32 sign = (r1 > r2) ? 1 : -1;

    //
    une->p->x[i] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->y[i] = (f32)rand() / (f32)RAND_MAX;
    une->p->z[i] = sign * (f32)rand() / (f32)RAND_MAX;

    //
    une->p->vx[i] = (f32)rand() / (f32)RAND_MAX;
    une->p->vy[i] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->vz[i] = (f32)rand() / (f32)RAND_MAX;

    une->p->x[i + 1] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->y[i + 1] = (f32)rand() / (f32)RAND_MAX;
    une->p->z[i + 1] = sign * (f32)rand() / (f32)RAND_MAX;

    //
    une->p->vx[i + 1] = (f32)rand() / (f32)RAND_MAX;
    une->p->vy[i + 1] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->vz[i + 1] = (f32)rand() / (f32)RAND_MAX;

    une->p->x[i + 2] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->y[i + 2] = (f32)rand() / (f32)RAND_MAX;
    une->p->z[i + 2] = sign * (f32)rand() / (f32)RAND_MAX;

    //
    une->p->vx[i + 2] = (f32)rand() / (f32)RAND_MAX;
    une->p->vy[i + 2] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->vz[i + 2] = (f32)rand() / (f32)RAND_MAX;

    une->p->x[i + 3] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->y[i + 3] = (f32)rand() / (f32)RAND_MAX;
    une->p->z[i + 3] = sign * (f32)rand() / (f32)RAND_MAX;

    //
    une->p->vx[i + 3] = (f32)rand() / (f32)RAND_MAX;
    une->p->vy[i + 3] = sign * (f32)rand() / (f32)RAND_MAX;
    une->p->vz[i + 3] = (f32)rand() / (f32)RAND_MAX;
  }

  pthread_exit(NULL);
}

//
void *move_particles(void *arg)
{
  srtuct_1 *une = (srtuct_1 *)arg;
  //
  const f32 softening = 1e-20;

  //
  for (u64 i = une->o; i < une->o + une->n; i++)
  {
    //
    f32 fx = 0.0;
    f32 fy = 0.0;
    f32 fz = 0.0;
    const f32 p_xi = une->p->x[i];
    const f32 p_yi = une->p->y[i];
    const f32 p_zi = une->p->z[i];
    // 23 floating-point operations
    for (u64 j = une->o; j < une->o + une->n; j++)
    {
      // Newton's law
      const f32 dx = une->p->x[j] - p_xi; // 1
      const f32 dy = une->p->y[j] - p_yi; // 2
      const f32 dz = une->p->z[j] - p_zi; // 3
      const f32 d_2 = (dz * dz) + softening;
      const f32 d_3 = (dx * dx) + d_2;
      const f32 d_4 = (dy * dy) + d_3;
      const f32 t = sqrtf(d_4);
      const f32 d_3_over_2 = 1.0f / (d_4 * t); // 11

      // Net force
      fx += (dx * d_3_over_2); // 13
      fy += (dy * d_3_over_2); // 15
      fz += (dz * d_3_over_2); // 17
    }

    //
    une->p->vx[i] += 0.01 * fx; // 19
    une->p->vy[i] += 0.01 * fy; // 21
    une->p->vz[i] += 0.01 * fz; // 23
  }

  // 3 floating-point operations
  for (u64 i = une->o; i < une->o + une->n; i += 4)
  {
    une->p->x[i] += 0.01 * une->p->vx[i];
    une->p->y[i] += 0.01 * une->p->vy[i];
    une->p->z[i] += 0.01 * une->p->vz[i];

    une->p->x[i + 1] += 0.01 * une->p->vx[i + 1];
    une->p->y[i + 1] += 0.01 * une->p->vy[i + 1];
    une->p->z[i + 1] += 0.01 * une->p->vz[i + 1];

    une->p->x[i + 2] += 0.01 * une->p->vx[i + 2];
    une->p->y[i + 2] += 0.01 * une->p->vy[i + 2];
    une->p->z[i + 2] += 0.01 * une->p->vz[i + 2];

    une->p->x[i + 3] += 0.01 * une->p->vx[i + 3];
    une->p->y[i + 3] += 0.01 * une->p->vy[i + 3];
    une->p->z[i + 3] += 0.01 * une->p->vz[i + 3];
  }

  pthread_exit(NULL);
}

//
int main(int argc, char **argv)
{

  pthread_t t1[NB_PTHREADS];
  pthread_t t2[NB_PTHREADS];

  srtuct_1 arg1[NB_PTHREADS];

  //
  const u64 n = (argc > 1) ? atoll(argv[1]) : 225536;
  const u64 steps = 10;

  //
  f64 rate = 0.0, drate = 0.0;

  // Steps to skip for warm up
  const u64 warmup = 3;

  //

  srand(0);

  particle_t *p = malloc(sizeof(particle_t) * n);
  p->x = aligned_alloc(64, n * sizeof(f32));
  p->y = aligned_alloc(64, n * sizeof(f32));
  p->z = aligned_alloc(64, n * sizeof(f32));
  p->vx = aligned_alloc(64, n * sizeof(f32));
  p->vy = aligned_alloc(64, n * sizeof(f32));
  p->vz = aligned_alloc(64, n * sizeof(f32));
  

  for (u64 l = 0; l < NB_PTHREADS; l++)
  {
    arg1[l].p = p;
    arg1[l].o = (l * n) / NB_PTHREADS;
    arg1[l].n = n / NB_PTHREADS;
  }

  for (u64 m = 0; m < NB_PTHREADS; m++)
  {
    pthread_create(&t1[m], NULL, init, (void *)&arg1[m]);
  }
  for (u64 m = 0; m < NB_PTHREADS; m++)
  {
    pthread_join(t1[m], NULL);
  }
  //

  const u64 s = sizeof(particle_t) * n;

  printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);

  //
  printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s");
  fflush(stdout);

  // pthread_join(t1,NULL);
  //
  for (u64 i = 0; i < steps; i++)
  {
    // Measure
    const f64 start = omp_get_wtime();
    for (u64 m = 0; m < NB_PTHREADS; m++)
    {
      pthread_create(&t2[m], NULL, move_particles, (void *)&arg1[m]);
    }
    for (u64 m = 0; m < NB_PTHREADS; m++)
    {
      pthread_join(t2[m], NULL);
    }

    const f64 end = omp_get_wtime();

    // Number of interactions/iterations
    const f32 h1 = (f32)(n) * (f32)(n - 1);

    // GFLOPS
    const f32 h2 = (23.0 * h1 + 3.0 * (f32)n) * 1e-9;

    if (i >= warmup)
    {
      rate += h2 / (end - start);
      drate += (h2 * h2) / ((end - start) * (end - start));
    }

    //
    printf("%5llu %10.3e %10.3e %8.1f %s\n",
           i,
           (end - start),
           h1 / (end - start),
           h2 / (end - start),
           (i < warmup) ? "*" : "");

    fflush(stdout);
  }

  //
  rate /= (f64)(steps - warmup);
  drate = sqrt(drate / (f64)(steps - warmup) - (rate * rate));

  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
         "Average performance:", "", rate, drate);
  printf("-----------------------------------------------------\n");
  
  //
  free(p->x);
  free(p->y);
  free(p->z);
  free(p->vx);
  free(p->vy);
  free(p->vz);
  free(p);

  //
  return 0;
}
