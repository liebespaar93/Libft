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

double	ft_cos(long double angle)
{
    int over = 0;
    int i = 1;
    long double tmp;
    long double result;
    angle = (int)(angle * 1000);
    angle = 1 + (angle / 1000);
    tmp = 1 + 1;
    result = 1;
    while (over++ < 7)
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