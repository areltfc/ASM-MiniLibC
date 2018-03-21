/*
1;4205;0c** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** memmove-tests
*/

#include <criterion/criterion.h>
#include <string.h>
#include <stdlib.h>
#include "include-tests.h"

Test(memmove, memmove_base)
{
	char *str = strdup("Salutation");

	if (str == NULL)
		abort();
	memmove(str + 3, str, 5);
	cr_expect(strcmp(str + 3, "Saluton") == 0);
	cr_expect(strcmp(str, "SalSaluton") == 0);
	free(str);
	str = strdup("Salutation");
	if (str == NULL)
		abort();
	memmove(str, str + 2, 3);
	cr_expect(strcmp(str, "lututation") == 0);
	free(str);
}
