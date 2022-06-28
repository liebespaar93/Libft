int	ft_atoi_len(char *str)
{
	int		len;
	int		flag;

	len = 0;
	flag = 1;
	while (*str)
	{
		if ((0x09 <= *str && *str <= 0x0D) || *str == 0x20)
			flag = 1;
		else if ((0x30 <= *str && *str <= 0x39) || *str == '-' || *str == '+')
		{
			if (flag && flag--)
				len++;
		}
		else
			return (0);
		str++;
	}
	return (len);
}
