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
	const size_t len = simple_c_strlen(BASE_TEST_STR);
	char *str = malloc(sizeof(char) * (len + 1));

	memcpy(str, BASE_TEST_STR, len);
	cr_assert(simple_c_strcmp(str, BASE_TEST_STR) == 0);
	free(str);
}
