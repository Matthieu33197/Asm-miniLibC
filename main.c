#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long unsigned int astrlen(const char* str);
char *astrchr(const char *str, int c);
void *amemset( void * pointer, int value, size_t count );
void *amemcpy( void * destination, const void * source, size_t size );

int main(void)
{
    printf("%d\n", strcasecmp("mamA", "maman"));
    printf("%d\n", astrcasecmp("mamA", "maman"));
}