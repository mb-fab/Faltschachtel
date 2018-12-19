
include <config.scad>;

module part2()
{
    // Bottom
    square([box_x, box_y]);

    // Front side
    translate([box_x+spacing, 0])
    square([box_z, box_y]);
}

part2();
