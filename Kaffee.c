// Kaffee, einfach Kaffee

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* nameWithPrice(const char* price)
{
  char *name = "Kaffee - ";
  char *description = malloc(strlen(name) + strlen(price) + 1);
  strcpy(description, name);
  strcat(description, price);
  return description;
}

int main()
{
  char* description = nameWithPrice("0,80€");
  printf("%s\n", description);
  free(description);
  return 0;
}
