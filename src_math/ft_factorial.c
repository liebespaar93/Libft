/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_factorial.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42seoul.kr>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/28 02:03:15 by kyoulee           #+#    #+#             */
/*   Updated: 2022/06/28 02:03:16 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int ft_factorial(int num)
{
    int result = 1;
    int i;

    i = 1;
    if (num < 0)
        return (0);
    while (i <= num)
        result = result * i++;
    return (result);
}
