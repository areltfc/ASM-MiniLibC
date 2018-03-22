/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** include-tests
*/

#ifndef INCLUDE_TESTS_H_
# define INCLUDE_TESTS_H_

/*
 *	Test macros
 */

# define BASE_TEST_STR "Ceci est un sacré test"
# define BASE_MOVED_TEST_STR "Ceci est un gros test"

/*
 *	strlen
 */

size_t simple_c_strlen(const char *s);
extern size_t strlen(const char *s);

/*
 *	Memory
 */

void *simple_c_memmove(char *dst, const char *src, size_t n);
extern void *memset(void *s, int x, size_t n);
extern void *memcpy(void *dest, const void *src, size_t n);
extern void *memmove(void *dest, const void *src, size_t n);

/*
 *	String comparison
 */

int simple_c_strcmp(const char *p1, const char *p2);
extern int strcmp(const char *s1, const char *s2);
extern int strncmp(const char *s1, const char *s2, size_t n);
extern int strcasecmp(const char *s1, const char *s2);

/*
 *	Character / String research
 */

char *simple_c_strchr(const char *s, int c);
extern char *strchr(const char *__s, int __c);
extern char *rindex(const char *s, int c);
extern size_t strcspn(const char *s, const char *reject);
extern char *strpbrk(const char *s, const char *accept);
extern char *strstr(const char *haystack, const char *needle);

#endif /* !INCLUDE_TESTS_H_  */
