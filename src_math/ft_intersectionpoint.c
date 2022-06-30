#include <libft.h>

t_xy ft_intersectionpoint(t_xy line1_p1, t_xy line1_p2, t_xy line2_p3, t_xy line2_p4)
{

    t_xy ret;

	ret.x = (line1_p1.x- line1_p2.x) * (line2_p3.y * line2_p4.x - line2_p4.y * line2_p3.x) \
		- (line2_p3.x - line2_p4.x) * (line1_p1.y * line1_p2.x -line1_p2.y * line1_p1.x) \
		/ ((line1_p1.x - line1_p2.x) * (line2_p3.y - line2_p4.y) - (line2_p3.x - line2_p4.x) * (line1_p1.y - line1_p2.y));
	ret.x = (line1_p1.y- line1_p2.y) * (line2_p3.x * line2_p4.y - line2_p4.x * line2_p3.y) \
		- (line2_p3.y - line2_p4.y) * (line1_p1.x * line1_p2.y -line1_p2.x * line1_p1.y) \
		/ ((line1_p1.y - line1_p2.y) * (line2_p3.x - line2_p4.x) - (line2_p3.y - line2_p4.y) * (line1_p1.x - line1_p2.x));

    return (ret);
}

