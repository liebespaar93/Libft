/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.k>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/09 15:20:53 by kyoulee           #+#    #+#             */
/*   Updated: 2022/03/25 19:14:34 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isprint(int c)
{
	if (0x20 <= c && c <= 0x7e)
		return (1);
	return (0);
}
