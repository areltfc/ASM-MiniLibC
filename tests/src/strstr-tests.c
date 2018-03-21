/*
1;4205;0c** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strstr-tests
*/

#include <criterion/criterion.h>
#include <stdlib.h>
#include "include-tests.h"

Test(strstr, strstr_base)
{
	const char *s1 = "abcde";

	cr_expect(strstr(s1, "bcde") == (s1 + 1));
	cr_expect(strstr(s1, "bced") == NULL);
	cr_expect(strstr(s1, "bcdef") == NULL);
}
