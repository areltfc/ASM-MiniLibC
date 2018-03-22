/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strchr, strchr_base)
{
	const char *str = BASE_TEST_STR;

	cr_expect(strchr(str, 's') == simple_c_strchr(str, 's'));
}
