/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strpbrk-tests
*/

#include <criterion/criterion.h>
#include <stdlib.h>
#include "include-tests.h"

Test(strpbrk, strpbrk_base)
{
	const char *s1 = "abcde";
	const char *s2 = "eb";
	const char *s3 = ".";
	const char *s4 = "a";

	cr_expect(strpbrk(s1, s2) == (s1 + 1));
	cr_expect(strpbrk(s1, s3) == NULL);
	cr_expect(strpbrk(s1, s4) == s1);
}
