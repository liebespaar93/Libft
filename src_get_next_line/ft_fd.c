/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fd.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <kyoulee@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/01 14:45:30 by kyoulee           #+#    #+#             */
/*   Updated: 2022/09/15 12:56:36 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

int	ft_open(char *filename, int option)
{
	int		fd;

	fd = open(filename, option);
	if (fd < 0 && write(2, "fd_error\n", 9))
		exit(1);
	return (fd);
}
