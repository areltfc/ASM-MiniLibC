/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strcmp-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strcmp, strcmp_base)
{
	const char *base = "abcdef";
	const char *wrong = "000bcdef";
	const char *empty_str = "";
	const char *single_char = "a";

	cr_assert(strcmp(base, base) == simple_c_strcmp(base, base));
	cr_assert(strcmp(base, wrong) == simple_c_strcmp(base, wrong));
	cr_assert(strcmp(base, empty_str) == simple_c_strcmp(base, empty_str));
	cr_assert(strcmp(base, single_char) == simple_c_strcmp(base, single_char));
}
