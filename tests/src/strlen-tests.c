/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strlen-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strlen, base)
{
	cr_assert(strlen(BASE_TEST_STR) == simple_c_strlen(BASE_TEST_STR));
}
