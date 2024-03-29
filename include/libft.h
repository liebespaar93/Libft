/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/10 17:54:41 by kyoulee           #+#    #+#             */
/*   Updated: 2022/09/07 01:10:27 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# ifndef ERROR_M
#  define ERROR_M 1
# endif

# ifndef WARRING_M
#  define WARRING_M 1
# endif

# include <stdlib.h>
# include <unistd.h>

typedef struct s_list		t_list;

typedef struct s_list
{
	void			*content;
	struct s_list	*next;
}	t_list;

/* src */
void	*ft_bnull(void **ptr);
int		ft_error_m(char *str);
int		ft_warring_m(char *str);
void	*ft_ptrcpy(void **ptr, void *cpy_ptr);
int		ft_ptrlen(void **ptr, char *type);
char	**ft_split(char const *s, char c);
size_t	ft_split_len(char const *s, char c);

/* src_is */
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);

/* src_lst */
int		ft_lst_content_len(t_list **lst);
char	*ft_lst_malloc(t_list **lst);
void	ft_lstadd_back(t_list **lst, t_list *new_lst);
void	ft_lstadd_front(t_list **lst, t_list *new_lst);
void	ft_lstclear(t_list **lst, void (*del)(void *));
void	ft_lstdelone(t_list *lst, void (del)(void *));
void	ft_lstiter(t_list *lst, void (*f)(void *));
t_list	*ft_lstlast(t_list *lst);
t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));
t_list	*ft_lstnew(void *content);
int		ft_lstsize(t_list *lst);

/* src_malloc */
void	*ft_calloc(size_t count, size_t size);
void	*ft_zeromalloc(void **ptr, size_t size);

/* src_memory */
void	ft_bzero(void *s, size_t n);
void	*ft_memchr(const void *s, int c, size_t n);
int		ft_memcmp(const void *s1, const void *s2, size_t n);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memmove(void *dst, const void *src, size_t len);
void	*ft_memset(void *b, int c, size_t len);

/* src_put */
void	ft_putchar_fd(char c, int fd);
void	ft_putendl_fd(char *s, int fd);
void	ft_putnbr_fd(int n, int fd);
void	ft_putstr_fd(char *s, int fd);

/* src_str */
int		ft_str_diff(char *str, char *src);
char	*ft_str_upper(char *str);
int		ft_strchr_index(char *str, char c);
int		ft_strchr_num(char **str);
char	*ft_strchr(const char *s, int c);
int		ft_strcmp(const char *s1, const char *s2);
size_t	ft_strcpy(char *dst, const char *src);
char	*ft_strdup(const char *s1);
void	ft_striteri(char *s, void (*f)(unsigned int, char*));
char	*ft_strjoin(char const *s1, char const *s2);
size_t	ft_strlcat(char *dst, const char *src, size_t dstsize);
size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize);
size_t	ft_strlen(const char *s);
char	*ft_strmapi(char const *s, char (*f)(unsigned int, char));
void	ft_strmcpy(char **dst, char *src);
int		ft_strncmp(const char *s1, const char *s2, size_t n);
char	*ft_strncpy(char *str, size_t len);
char	*ft_strnstr(const char *haystack, const char *needle, size_t len);
char	*ft_strrchr(const char *s, int c);
char	*ft_strtrim(char const *s1, char const *set);
char	*ft_substr(char const *s, size_t start, size_t len);

int		ft_tolower(int c);
int		ft_toupper(int c);

/* src_to */
int		ft_atoi_overflow(long sign);
int		ft_atoi_base(char **str_ptr);
size_t	ft_atoi_arr(int **atoi_arr_ptr, char *str);
size_t	ft_atoi_len(char *str);
int		ft_atoi_move(char **str_ptr);
int		ft_atoi(const char *str);
int		ft_dtoa(long double value, char **str, int max_len);
char	*ft_etoa(int e);
int		ft_itoa_base(__int128 value, char **str, int index);
char	*ft_itoa(int n);

#endif
