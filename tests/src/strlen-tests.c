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
	cr_expect(strlen("t") == 1);
	cr_expect(strlen("aaaaaaaaaa") == 10);
	cr_expect(strlen("") == 0);
}
