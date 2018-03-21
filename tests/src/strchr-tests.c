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
	const char *test = "azerty";

	cr_expect((strchr(test, 'a') == test));
	cr_expect((strchr(test, 'z') == (test + 1)));
	cr_expect(!strchr(test, '.'));
}
