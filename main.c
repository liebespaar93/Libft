/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mian.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kyoulee <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/20 18:00:41 by kyoulee           #+#    #+#             */
/*   Updated: 2022/06/26 19:22:24 by kyoulee          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h>
#include <fcntl.h>
#include <stdio.h>

int	main(void)
{
	char			*line;
	int				fd;
	int				fd2;
	int				i;

	fd = open("check.txt", O_RDONLY);
	i = 0;
	while (i++ < 300)
	{
		line = ft_get_next_line(fd);
		if (!line)
			break ;
		printf("%s", line);
		free(line);
	}
	close(fd);
	return (0);
}
