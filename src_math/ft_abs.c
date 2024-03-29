/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_abs.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/20 11:59:14 by kyoulee           #+#    #+#             */
/*   Updated: 2022/09/01 19:40:30 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

float	ft_abs(float num)
{
	if (num < 0)
		return (-num);
	return (num);
}
