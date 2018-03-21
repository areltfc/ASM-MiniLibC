/*
** EPITECH PROJECT, 2018
** MiniLibC
** File description:
** include-tests
*/

#ifndef INCLUDE_TESTS_H_
# define INCLUDE_TESTS_H_

extern size_t strlen(const char *s);
extern char *strchr(const char *__s, int __c);
extern char *rindex(const char *s, int c);
extern void *memset(void *s, int x, size_t n);
extern void *memcpy(void *dest, const void *src, size_t n);
extern int strcmp(const char *s1, const char *s2);
extern int strncmp(const char *s1, const char *s2, size_t n);
extern size_t strcspn(const char *s, const char *reject);
extern char *strpbrk(const char *s, const char *accept);
extern char *strstr(const char *haystack, const char *needle);
extern void *memmove(void *dest, const void *src, size_t n);

#endif /* !INCLUDE_TESTS_H_  */
