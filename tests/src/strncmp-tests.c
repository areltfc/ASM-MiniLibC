/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strncmp-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strncmp, strncmp_base)
{
	const char *base = "abcdef";
	const char *wrong = "abcdf";
	const char *empty_str = "";

	cr_assert(strncmp(base, wrong, 4) == 0);
	cr_assert(strncmp(base, wrong, 5) == -1);
	cr_assert(strncmp(empty_str, empty_str, 4) == 0);
	cr_assert(strncmp(NULL, NULL, 0) == 0);
	cr_assert(strncmp(empty_str, NULL, 0) == 0);
	cr_assert(strncmp(NULL, empty_str, 0) == 0);
	cr_assert(strncmp(empty_str, base, 10) == -97);
	cr_assert(strncmp(base, empty_str, 10) == 97);
}
