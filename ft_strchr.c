/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gmoraes- <gmoraes-l@student.42sp.org.br    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/11 17:18:06 by gmoraes-          #+#    #+#             */
/*   Updated: 2021/09/11 18:09:35 by gmoraes-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char    *ft_strchr(const char *str, int c)
{
    int i;

    i = 0;
    while (str[i] != '\0' && str[i] != c)
    {
        i++;
    }
    if (str[i] == (char)c)
    {
        return ((char *)&str[i]);
    }
    return (0);
}