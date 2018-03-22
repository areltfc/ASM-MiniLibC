/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strpbrk-tests
*/

#include <criterion/criterion.h>
#include <stdlib.h>
#include "include-tests.h"

char *simple_c_strpbrk(const char *s, const char *accept)
{
	for (; *s; ++s) {
		for (register const char *it = accept; *it; ++it) {
			if (*s == *it)
				return ((char *) s);
		}
	}
	return (NULL);
}

Test(strpbrk, strpbrk_base)
{
	const char *str = BASE_TEST_STR;

	cr_assert(strpbrk(str, "Ce") == simple_c_strpbrk(str, "Ce"));
	cr_assert(strpbrk(str, "eC") == simple_c_strpbrk(str, "eC"));
	cr_assert(strpbrk(str, ".e") == simple_c_strpbrk(str, ".e"));
	cr_assert(strpbrk(str, "???") == simple_c_strpbrk(str, "???"));
	cr_assert(strpbrk(str, "test") == simple_c_strpbrk(str, "test"));
	cr_assert(strpbrk(str, "u") == simple_c_strpbrk(str, "u"));
}
