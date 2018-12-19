
include <config.scad>;

top_fold_h = 19;
top_holder_flap_height = 20;
side_fold_h = 20;
bottom_flap_height = 10;

module part1()
{
    x = 0;
    y = 0;

    // Top plane flap
    x1 = x;
    y1 = y + box_x + side_fold_h + 2*spacing;
    translate([x1, y1])
    square([top_fold_h, box_y]);

    // Top plane
    x2 = x1 + top_fold_h + spacing;
    translate([x2, y1])
    square([box_x, box_y]);

    // Back plane
    x3 = x2 + box_x + spacing;
    translate([x3, y1])
    square([box_z, box_y]);

    // Flap from back plane to bottom
    x4 = x3 + box_z + spacing;
    translate([x4, y1])
    square([bottom_flap_height, box_y]);

    // Left side plane
    y2 = y1 - spacing - box_x;
    translate([x3, y2])
    square([box_z, box_x]);

    // Flap from left side to top
    x5 = x3 - spacing - top_holder_flap_height;
    translate([x5, y2])
    square([top_holder_flap_height, box_x]);

    // Flap from left side to front side
    translate([x3, y])
    square([box_z, side_fold_h]);

    // Flap from left side to bottom
    translate([x4, y2])
    square([bottom_flap_height, box_x]);

    // Right side plane
    y3 = y1 + box_y + spacing;
    translate([x3, y3])
    square([box_z, box_x]);

    // Flap from right side to top
    translate([x5, y3])
    square([top_holder_flap_height, box_x]);

    // Flap from right side to bottom
    translate([x4, y3])
    square([bottom_flap_height, box_x]);
}

part1();
