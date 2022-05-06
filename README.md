# Projet de Programmation Numérique

Ce projet fait partie de la suite de notre projet du premier semestre du module Projet de programmation numérique du master Calcul Haute Performance et Simulation de l'Université Paris-Saclay, qui consiste à simuler des programmes __MPI__ à l'aide de l’outil __MAQAO__.

# Les changements importants

## Usage

```c
//
#include <omp.h>
// 
void move_particles(particle_t p, const u64 nb_particles, const f32 dt, const int mpi_rank, const int mpi_world_size, u64 particles)
{
  //
  const int start_particle = mpi_rank * particles;
  const int end_particle = (mpi_rank + 1) * particles;

  //code

  for (u64 i = start_particle; i < end_particle; i++)
  {
    //code
  }
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.x, particles, MPI_FLOAT, MPI_COMM_WORLD);
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.y, particles, MPI_FLOAT, MPI_COMM_WORLD);
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.z, particles, MPI_FLOAT, MPI_COMM_WORLD);
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vx, particles, MPI_FLOAT, MPI_COMM_WORLD);
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vy, particles, MPI_FLOAT, MPI_COMM_WORLD);
  MPI_Allgather(MPI_IN_PLACE, 0, MPI_DATATYPE_NULL, p.vz, particles, MPI_FLOAT, MPI_COMM_WORLD);
}
int main(int argc, char **argv){
    //code
     const int particles = n / mpi_world_size;
     //code

}

```
## Compilation de code
Pour compiler notre code faudra se placer sur le dossier __Code Nbody3D__ et lancer la commande
```bash
make
```

## Lancement de code
Pour lancer le code en mode __MPI__ faudra la lancée comme suit:
```bash
mpirun -np 4 ./nbody_mpi
```
## Lancement de plusieurs run à la fois
```bash
make run
```
## Vérification des résultats 
Pour n=16384 particules faudra avoir :
```bash
Somme X = 811.466520 
Somme Y = 8205.631816 
Somme Z = 752.483836 
Somme VX = 8201.274152 
Somme VY = -35.480417 
Somme VZ = 8108.896847
```


## Contributions
* Anis MEHIDI
* Arezki Takfarines HAMIDANI
* Katia MOALI
* Madjid BOUZOURENE
* Sylia BENBACHIR
		    

