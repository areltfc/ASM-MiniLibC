/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(rindex, rindex_base)
{
	const char *test = "azazerty";

	cr_expect((rindex(test, 'a') == (test + 2)));
	cr_expect((rindex(test, 'z') == (test + 3)));
	cr_expect(!rindex(test, '.'));
}
