/*
1;4205;0c** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strncmp, strncmp_base)
{
	const char *s1 = "aaa";
	const char *s2 = "aaa";
	const char *s3 = "aaz";

	cr_expect(strncmp(s1, s2, 3) == 0);
	cr_expect(strncmp(s1, s2, 2) == 0);
	cr_expect(strncmp(s1, s3, 3) == -25);	
	cr_expect(strncmp(s3, s1, 3) == 25);
}
