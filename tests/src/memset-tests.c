/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** memset-tests
*/

#include <criterion/criterion.h>
#include <string.h>
#include "include-tests.h"

Test(memset, memset_base)
{
	char *str = strdup(BASE_TEST_STR);
	const size_t len = strlen(BASE_TEST_STR);
	const size_t max_reset = len / 2;

	memset(str, 0, strlen(str));
	for (unsigned int i = 0; i < len; ++i)
		cr_assert(str[i] == 0);
	memset(str, '!', max_reset);
	for (unsigned int i = 0; i < len; ++i) {
		if (i < max_reset)
			cr_assert(str[i] == '!');
		else
			cr_assert(str[i] == 0);
	}
}
