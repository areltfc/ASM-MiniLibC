/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** rindex-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(rindex, rindex_base)
{
	const char *str = BASE_TEST_STR;

	cr_expect(rindex(str, 'C') == str);
	cr_expect(rindex(str, 't') == (str + strlen(str) - 1));
	cr_expect(rindex(str, 0) == (str + strlen(str)));
	cr_expect(rindex(str, '.') == NULL);
}
