/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_d_two_connect1.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.kr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/28 16:48:12 by kyoulee           #+#    #+#             */
/*   Updated: 2022/07/28 16:48:13 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ft_dimension.h>

t_d_two	*ft_d_two_connect1_p(t_d_two *d_standard, t_d_two *d_new)
{
	if (!d_standard || !d_new)
		return (d_new);
	d_standard->connect1_p = d_new;
	d_new->connect1_m = d_standard;
	d_new->head1 = d_standard->head1;
	d_new->coordinate_1 = d_standard->coordinate_1 + 1;
	d_new->coordinate_2 = d_standard->coordinate_2;
	return (d_new);
}

t_d_two	*ft_d_two_connect1_m(t_d_two *d_standard, t_d_two *d_new)
{
	if (!d_standard || !d_new)
		return (d_new);
	d_standard->connect1_m = d_new;
	d_new->connect1_p = d_standard;
	d_new->head1 = d_standard->head1;
	d_new->coordinate_1 = d_standard->coordinate_1 - 1;
	d_new->coordinate_2 = d_standard->coordinate_2;
	return (d_new);
}
