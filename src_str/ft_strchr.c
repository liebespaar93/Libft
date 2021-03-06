/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.k>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/10 11:36:50 by kyoulee           #+#    #+#             */
/*   Updated: 2022/03/28 14:22:01 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strchr(const char *s, int c)
{
	while (c > 255)
		c -= 256;
	while (*s != c)
	{
		if (*s == '\0')
			return ((void *)0);
		s++;
	}
	return ((char *)s);
}
