include <../params.scad>;


// gpio socket
module gpio_pin_socket() {
    for (location=first_row_pin_socket_pin_center_locations) {
        translate(location) {
            // cylinder(h=middle_plate_height+top_plate_height+5, r=chip_pin_socket_hole_radius, $fn=cylinder_fn);
            cube([2.7, 3, middle_plate_height+top_plate_height+40], center=true);
            translate([0, -0.45, -0.1]) {
                cube([3, 1, 2.1]);
            };
        };
    };
    for (location=second_row_pin_socket_pin_center_locations) {
        translate(location) {
            cube([2.7, 3, middle_plate_height+top_plate_height+40], center=true);
            // cylinder(h=middle_plate_height+top_plate_height+5, r=chip_pin_socket_hole_radius, $fn=cylinder_fn);
        };
    };
    for (location=gpio_holding_screw_locations) {
        translate(location) {
            cylinder(h=40, r=screw_hole_radius+0.1, $fn=cylinder_fn);
        }
    }
};

module bolt() {
    cylinder(h=1, r=screw_hole_radius+0.3, $fn=cylinder_fn);
    cylinder(h=10, r=screw_hole_radius, $fn=cylinder_fn);
}
