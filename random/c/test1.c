#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER_SIZE 256

int main() {
	int i, num_a_reservar;
	char buffer[BUFFER_SIZE];
	char *char_ptr;
	int *numeros;
	FILE *archivoni;
	fputs("cantidad de números: ", stdout);
	do {
		memset(buffer, 0, BUFFER_SIZE);
		fgets(buffer, BUFFER_SIZE - 1, stdin);
	}	while (sscanf(buffer, "%i", &num_a_reservar) != 1);
	numeros = (int *) calloc((size_t) num_a_reservar, sizeof(int));
	if (numeros == NULL) 
	{
		perror("no reservo la memoria esto esta recontra gaga");
		return 1;
	}
	for(i = 0; i < num_a_reservar; i++)
	{
		do {
			memset(buffer, 0, BUFFER_SIZE);
			printf("número %i°: ", i);
			fgets(buffer, BUFFER_SIZE - 1, stdin);
		}	while (sscanf(buffer, "%i", (numeros + (size_t) i)) != 1);
	}
	fputs("los números introducidos son: \n", stdout);
	for (i = 0; i < num_a_reservar; i++) {
		printf("número %i°: %i\n", i, *(numeros + (size_t) i));
	}

	fputs("ahora el nombre del archivo donde los vas a guardar: ", stdout);
	memset(buffer, 0, BUFFER_SIZE);
	fgets(buffer, BUFFER_SIZE - 1, stdin);
	if ((char_ptr = strchr(buffer, '\n')) != NULL) {
		*char_ptr = '\0';
	}
	archivoni = fopen(buffer, "wt");
	if (archivoni == NULL) {
		perror("MALA NOTICIAS MI GENTE, MALA NOTICIAS, NO HEMO PODIDO ABRIR EL ARCHIVO :V");
		return 1;
	}
	fputs("guardando datos...\n", stdout);
	for (i = 0; i < num_a_reservar; i++) {
		fprintf(archivoni, "%i\n", *(numeros + (size_t) i));
	}
	fputs("lo dato an sido guardado satifatoriamente\n", stdout);
	free(numeros);
	fclose(archivoni);
	return 0;
}
