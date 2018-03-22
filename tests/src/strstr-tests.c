/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strstr-tests
*/

#include <criterion/criterion.h>
#include <stdlib.h>
#include "include-tests.h"

Test(strstr, strstr_base)
{
	const char *str = BASE_TEST_STR;

	cr_expect(strstr(str, BASE_TEST_STR) == str);
	cr_expect(strstr(str, "e") == (str + 1));
	cr_expect(strstr(str, "ci est") == (str + 2));
	cr_expect(strstr(str, "ci estz") == NULL);
	cr_expect(strstr(str, "") == str);
	cr_expect(strstr("", str) == NULL);
}
