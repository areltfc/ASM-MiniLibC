/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** strcspn-tests
*/

#include <criterion/criterion.h>
#include "include-tests.h"

size_t simple_c_strcspn (const char *s, const char *reject)
{
	size_t count = 0;

	while (*s != '\0')
		if (strchr(reject, *s++) == NULL)
			++count;
		else
			return (count);

	return (count);
}

Test(strcspn, strcspn_base)
{
	const char *str = BASE_TEST_STR;

	cr_expect(strcspn(str, "Ceci") == simple_c_strcspn(str, "Ceci"));
	cr_expect(strcspn(str, "i") == simple_c_strcspn(str, "i"));
	cr_expect(strcspn(str, "test") == simple_c_strcspn(str, "test"));
	cr_expect(strcspn(str, ";;;") == simple_c_strcspn(str, ";;;"));
	cr_expect(strcspn(str, "zzs") == simple_c_strcspn(str, "zzs"));
	cr_expect(strcspn(str, " ") == simple_c_strcspn(str, " "));

}
