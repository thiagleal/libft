/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsiqueir <tsiqueir@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/31 12:47:49 by tsiqueir          #+#    #+#             */
/*   Updated: 2024/12/06 19:01:49 by tsiqueir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	const char	*src_ptr;
	char		*dest_ptr;
	size_t		i;

	if (!dest && !src)
		return (NULL);
	src_ptr = (const char *)src;
	dest_ptr = (char *)dest;
	i = 0;
	if (dest_ptr < src_ptr)
	{
		while (n--)
		{
			dest_ptr[i] = src_ptr[i];
			i++;
		}
	}
	else
	{
		i = n;
		while (i--)
			dest_ptr[i] = src_ptr[i];
	}
	return (dest);
}
