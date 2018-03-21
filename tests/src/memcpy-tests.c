/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** memcy-tests
*/

#include <criterion/criterion.h>
#include <string.h>
#include <stdlib.h>
#include "include-tests.h"

Test(memcpy, memcpy_base)
{
	char *str = strdup("abc");
	char *cpy = malloc(sizeof(char) * 3);

	if (str == NULL || cpy == NULL)
		abort();
	memcpy(cpy, str, 4);
	cr_expect(strcmp(str, cpy) == 0);
	str[2] = 'a';
	memcpy(cpy, str, 2);
	cr_expect(strcmp(str, cpy) != 0);
	free(str);
	free(cpy);
}
