/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.k>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/10 16:09:40 by kyoulee           #+#    #+#             */
/*   Updated: 2022/03/25 19:12:01 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int	ft_atoi_overflow(long sign);

int	ft_atoi(const char *str)
{
	long	num;
	long	sign;

	num = 0;
	sign = 1;
	while ((0x09 <= *str && *str <= 0x0d) || *str == 0x20)
		str++;
	if (*str == '+' || *str == '-')
	{
		if (*str == '-')
			sign = -1;
		str++;
	}
	while (ft_isdigit(*str))
	{
		if (num > num * 10)
			return (ft_atoi_overflow(sign));
		num = num * 10 + (*str - 0x30);
		str++;
	}
	return ((int)(num * sign));
}

int	ft_atoi_move(char **str_ptr)
{
	int	num;
	int	sign;

	sign = 1;
	num = 0;
	while ((0x09 <= **str_ptr && **str_ptr <= 0x0D) || **str_ptr == 0x20)
		(*str_ptr)++;
	if ((**str_ptr == '-' || **str_ptr == '+'))
	{
		if (**str_ptr == '-')
			sign = -1;
		(*str_ptr)++;
	}
	while (0x30 <= **str_ptr && **str_ptr <= 0x39)
		num = (num * 10) + (*(*str_ptr)++ - 0x30);
	return (num * sign);
}

int	ft_atoi_overflow(long sign)
{
	if (sign == 1)
		return (-1);
	return (0);
}
