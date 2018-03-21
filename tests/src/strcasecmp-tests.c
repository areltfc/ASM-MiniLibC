/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strcasecmp-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

Test(strcasecmp, strcasecmp_base)
{
	cr_expect(strcasecmp("aaa", "aaa") == 0);
	cr_expect(strcasecmp("AaA", "aAa") == 0);
	cr_expect(strcasecmp("aaa", "aaz") == -25);	
	cr_expect(strcasecmp("aaz", "aaa") == 25);
}
