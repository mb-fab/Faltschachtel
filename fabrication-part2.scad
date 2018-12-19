
include <config.scad>;
use <part2.scad>;


part2();

translate([0, box_y+spacing])
part2();

translate([0, 2*(box_y+spacing)])
part2();
