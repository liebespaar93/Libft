/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_cos.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.kr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/28 02:27:32 by kyoulee           #+#    #+#             */
/*   Updated: 2022/06/28 02:27:35 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>

double	ft_cos(long double angle)
{
    int over = 0;
    int i = 1;
    long double tmp;
    long double result;
    while (angle < (-3.141592 * 2))
        angle += 3.141592 * 2;
    while (angle >= (3.141592 * 2))
        angle -= 3.141592 * 2;
    angle = (int)(angle * 100000);
    angle = 1 + (angle / 100000);
    tmp = 1 + 1;
    result = 1;
    while (over++ < ft_abs(angle * 10))
    {
        if (i % 2)
            result -= tmp - 1;
        else
            result += tmp - 1; 
        tmp = (tmp - 1) * ((angle - 1) * (angle - 1) / (2 * i) / ((2 * i) - 1)) + 1;
        i++;
    }
    return (-(result - 1));
}