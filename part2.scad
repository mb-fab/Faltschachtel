
include <config.scad>;

module part2()
{
    // Box bottom
    color("yellow")
    square([box_x, box_y]);

    // Box frontal side
    color("cyan")
    translate([box_z+spacing, 0])
    square([box_z, box_y]);
}

part2();
