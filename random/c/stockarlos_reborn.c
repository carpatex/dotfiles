#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct producto {
	double precio;
	int numero;
	int stock;
	char nombre[80];
};

int main() {
	char input_buffer[256];
	FILE *base_de_datos;
	int i, opcion;
	size_t tamano, n_productos;
	struct producto *productos_cargados;
	fputs("Bienvenido a STOCKARLOS REBORN!\n", stdout);
	base_de_datos = fopen("productos.dat", "r+");
	if (base_de_datos == NULL) {
		perror("Hubo un error al abrir el archivo de la base de datos");
		return 1;
	}
	fseek(base_de_datos, 0, SEEK_END);
	tamano = ftell(base_de_datos);
	n_productos = tamano / sizeof(struct producto);
	if (n_productos) {
		productos_cargados = (struct producto *) calloc((size_t) n_productos, sizeof(struct producto));
		if (productos_cargados == NULL) {
			perror("Hubo un error al reservar memoria");
			return 1;
		}
		fread(productos_cargados, sizeof(struct producto), (size_t) n_productos, base_de_datos);
	}
	fseek(base_de_datos, 0, SEEK_SET);
	while (1) {
		memset(input_buffer, 0, 256);
		fputs("A continuación verá una lista de opciones:\n", stdout);
		fputs("1: Añadir producto\n", stdout);
		fputs("2: Remover producto\n", stdout);
		fputs("3: Listar todos los productos\n", stdout);
		fputs("4: Elegir un producto por número\n", stdout);
		fgets(input_buffer, 255, stdin);
		if (sscanf(input_buffer, "%i", &opcion) != 1) {
			fputs("Error. Se debe introducir un número que sea una opción válida.\n");
		}
	}
	fclose(base_de_datos);
	free(productos_cargados);
	return 0;
}
