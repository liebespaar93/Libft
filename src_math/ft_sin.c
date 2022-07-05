/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sin.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.kr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/28 02:11:57 by kyoulee           #+#    #+#             */
/*   Updated: 2022/06/28 02:11:59 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

double	ft_sin(long double angle)
{
    int over = 0;
    int i = 1;
    long double tmp;
    long double result;
    angle = (int)((angle - (int)angle)* 10000);
    angle = 1 + (angle / 10000);
    tmp = angle;
    result = 1;
    while (over++ < 7)
    {
        if (i % 2)
            result += tmp - 1;
        else
            result -= tmp - 1; 
        tmp = (tmp - 1) * ((angle - 1) * (angle - 1) / (2 * i) / ((2 * i) + 1)) + 1;
        i++;
    }
    return (result - 1);
}
