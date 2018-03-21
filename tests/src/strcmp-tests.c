/*
1;4205;0c** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strcmp, strcmp_base)
{
	const char *s1 = "aaa";
	const char *s2 = "aaa";
	const char *s3 = "aaz";

	cr_expect(strcmp(s1, s2) == 0);
	cr_expect(strcmp(s1, s3) == -25);	
	cr_expect(strcmp(s3, s1) == 25);
}
