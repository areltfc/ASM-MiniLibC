/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** memmove-tests
*/

#include <criterion/criterion.h>
#include <string.h>
#include <stdlib.h>
#include "include-tests.h"

Test(memmove, memmove_base)
{
	char *c_str = strdup(BASE_TEST_STR);
	char *h_str = strdup(c_str);
	const size_t len = strlen(BASE_MOVED_TEST_STR);

	memmove(h_str, BASE_MOVED_TEST_STR, len);
	simple_c_memmove(c_str, BASE_MOVED_TEST_STR, len);
	cr_assert(strcmp(h_str, c_str) == 0);
	memmove(h_str + 3, h_str, 10);
	simple_c_memmove(c_str + 3, c_str, 10);
	cr_assert(strcmp(h_str, c_str) == 0);
	memmove(h_str, BASE_MOVED_TEST_STR, len);
	simple_c_memmove(c_str, BASE_MOVED_TEST_STR, len);
	cr_assert(strcmp(h_str, c_str) == 0);
	memmove(h_str, NULL, 0);
	simple_c_memmove(c_str, NULL, 0);
	cr_assert(strcmp(h_str, c_str) == 0);
}
