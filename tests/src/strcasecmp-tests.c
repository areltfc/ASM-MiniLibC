/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strcasecmp-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strcasecmp, strcasecmp_base)
{
	const char *low_base = "abcdef";
	const char *hi_base = "ABCDEF";
	const char *empty_str = "";

	cr_assert(strcasecmp(hi_base, hi_base) == 0);
	cr_assert(strcasecmp(low_base, hi_base) == 0);
	cr_assert(strcasecmp(empty_str, hi_base) == -97);
}
