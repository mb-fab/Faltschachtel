
include <config.scad>;

module part1()
{
    x = 0;
    y = 0;

    // Top plane flap
    x1 = x;
    y1 = y + box_x + side_flap_height + 2*spacing;
    translate([x1, y1])
    polygon([
        [0, 10],
        [0, box_y - 10],
        [10, box_y],
        [top_flap_height, box_y],
        [top_flap_height, 0],
        [10, 0]
        ]);

    // Top plane
    x2 = x1 + top_flap_height + spacing;
    translate([x2, y1])
    square([box_x, box_y]);

    // Back plane
    x3 = x2 + box_x + spacing;
    translate([x3, y1])
    square([box_z, box_y]);

    // Flap from back plane to bottom
    x4 = x3 + box_z + spacing;
    translate([x4, y1])
    polygon([
        [0, 0],
        [0, box_y],
        [bottom_flap_height, box_y - 10],
        [bottom_flap_height, 10]
        ]);

    // Left side plane
    y2 = y1 - spacing - box_x;
    translate([x3, y2])
    square([box_z, box_x]);

    // Flap from left side to top
    x5 = x3 - spacing - top_holder_flap_height;
    translate([x5, y2])
    polygon([
        [0, 10],
        [0, box_x - 10],
        [10, box_x],
        [top_holder_flap_height, box_x],
        [top_holder_flap_height, 0],
        [10, 0]
        ]);

    // Flap from left side to front side
    translate([x3, y])
    polygon([
        [10, 0],
        [0, side_flap_height],
        [box_z, side_flap_height],
        [box_z - 10, 0]
        ]);

    // Flap from left side to bottom
    translate([x4, y2])
    polygon([
        [0, 0],
        [0, box_y],
        [bottom_flap_height, box_y - 10],
        [bottom_flap_height, 10]
        ]);

    // Right side plane
    y3 = y1 + box_y + spacing;
    translate([x3, y3])
    square([box_z, box_x]);

    // Flap from right side to top
    translate([x5, y3])
    polygon([
        [0, 10],
        [0, box_x - 10],
        [10, box_x],
        [top_holder_flap_height, box_x],
        [top_holder_flap_height, 0],
        [10, 0]
        ]);

    // Flap from right side to bottom
    translate([x4, y3])
    polygon([
        [0, 0],
        [0, box_y],
        [bottom_flap_height, box_y - 10],
        [bottom_flap_height, 10]
        ]);

    // Flap from right side to front
    y4 = y3 + box_x + spacing;
    translate([x3, y4])
    polygon([
        [0, 0],
        [10, side_flap_height],
        [box_z - 10, side_flap_height],
        [box_z, 0]
        ]);
}

part1();
