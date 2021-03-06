/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi_move.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.k>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/10 16:09:40 by kyoulee           #+#    #+#             */
/*   Updated: 2022/03/25 19:12:01 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

int	ft_atoi_overflow(long sign);

int	ft_atoi_move(char **str_ptr)
{
	int	num;
	int	sign;

	num = 0;
	sign = 1;
	while ((0x09 <= **str_ptr && **str_ptr <= 0x0D) || **str_ptr == 0x20)
		(*str_ptr)++;
	if ((**str_ptr == '-' || **str_ptr == '+'))
	{
		if (**str_ptr == '-')
			sign = -1;
		(*str_ptr)++;
	}
	while (0x30 <= **str_ptr && **str_ptr <= 0x39)
	{
		if (num > num * 10)
			return (ft_atoi_overflow(sign));
		num = (num * 10) + (**str_ptr - 0x30);
		(*str_ptr)++;
	}
	return (num * sign);
}

int	ft_atoi_overflow(long sign)
{
	if (sign == 1)
		return (-1);
	return (0);
}
