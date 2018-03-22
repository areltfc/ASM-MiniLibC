/*
** EPITECH PROJECT, 2018
** ASM MiniLibC
** File description:
** C functions for tests
*/

#include <stdlib.h>

size_t simple_c_strlen(const char *s)
{
	const char *s0 = s;

	for (; *s0; ++s0);
	return (s0 - s);
}

int simple_c_strcmp(const char *p1, const char *p2)
{
	register const unsigned char *s1 = (const unsigned char *) p1;
	register const unsigned char *s2 = (const unsigned char *) p2;
	register unsigned char c1 = 0;
	register unsigned char c2 = 0;

	while (c1 == c2) {
		c1 = (unsigned char) *s1++;
		c2 = (unsigned char) *s2++;
		if (c1 == '\0')
			return (c1 - c2);
	}
	return (c1 - c2);
}

char *simple_c_strchr(const char *s, const int c)
{
	for (; *s && *s != c; ++s);
	if (c == 0 || *s)
		return ((char *) s);
	return (NULL);
}

char *simple_c_memmove (char *dst, const char *src, size_t n)
{
	char *ret = dst;

	if (src == NULL)
		return (dst);
	if (src < dst)
	{
		dst += n;
		src += n;
		while (n--)
			*--dst = *--src;
	}
	else
		while (n--)
			*dst++ = *src++;
	return (ret);
}
