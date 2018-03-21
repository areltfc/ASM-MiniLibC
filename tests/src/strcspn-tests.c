/*
1;4205;0c1;4205;0c** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strchr-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strcspn, strcspn_base)
{
	const char *s1 = "abcde";
	const char *s2 = "eb";
	const char *s3 = ".";
	const char *s4 = "a";

	cr_expect(strcspn(s1, s2) == 1);
	cr_expect(strcspn(s1, s3) == strlen(s1));
	cr_expect(strcspn(s1, s4) == 0);
}
