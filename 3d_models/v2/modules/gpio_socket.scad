include <../params.scad>;


// gpio socket
module gpio_pin_socket() {
    for (location=first_row_pin_socket_pin_center_locations) {
        translate(location) {
            cylinder(h=middle_plate_height+top_plate_height+5, r=chip_pin_socket_hole_radius, $fn=cylinder_fn);
            translate([0, -0.45, -0.1]) {
                cube([3, 1, 2.1]);
            };
        };
    };
    for (location=second_row_pin_socket_pin_center_locations) {
        translate(location) {
            cylinder(h=middle_plate_height+top_plate_height+5, r=chip_pin_socket_hole_radius, $fn=cylinder_fn);
        };
    };
};
