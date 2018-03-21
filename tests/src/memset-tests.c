/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include <string.h>
#include "include-tests.h"

Test(memset, memset_base)
{
	char *str = strdup("abc");

	if (str == NULL)
		abort();
	memset(str, 0, 3);
	cr_expect(str[0] == 0 && str[1] == 0 && str[2] == 0);
	str[2] = 'a';
	memset(str, 0, 2);
	cr_expect(str[0] == 0 && str[1] == 0 && str[2] == 'a');
	free(str);
}
