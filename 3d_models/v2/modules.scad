include <flat_case_v2_params.scad>;


module holes_grid() {
    translate([hole_distance, (-hole_cube_width), 0]) {
        holes_row(1, 0, 0);
        holes_row(2, 0, 0);
        holes_row(3, 0, 0);
    };
};


// gpio socket
module gpio_pin_socket() {
    for (location=first_row_pin_socket_pin_center_locations) {
        translate(location) {
            cylinder(h=keyboard_height, r=chip_pin_socket_hole_radius, $fn=50);
        };
    };
    for (location=second_row_pin_socket_pin_center_locations) {
        translate(location) {
            cylinder(h=keyboard_height, r=chip_pin_socket_hole_radius, $fn=50);
        };
    };
};


// screw holes
module screw_hole_meshes() {
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            cylinder(h=4, r=nut_hole_mesh_radius, $fn=6);
        };
    };
};


module screw_holes() {
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            translate([0, 0, -1]) {
                cylinder(h=3, r=nut_hole_radius, $fn=6);
            };
        };
    };
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            translate([0, 0, -1]) {
                cylinder(h=6, r=screw_hole_radius, $fn=50);
            };
        };
    };

};


// key holders
module key_holders_row(row, start, end) {
    for (hole_position=hole_positions)
        translate(hole_position) {
	    for (pin_position=plastic_pin_locations) {
    	        translate(pin_position) {
                    cylinder(h=bottom_lid_height+7.6, r=plastic_pin_radius, $fn=50);
                };
            };
	    translate(central_pin_location) {
                cylinder(h=bottom_lid_height+7.6, r=central_pin_radius, $fn=50);
            };
        };
};

module key_holders_grid() {
    translate([hole_distance, (-hole_cube_width), 0]) {
        key_holders_row(1, 0, 0);
        key_holders_row(2, 0, 0);
        key_holders_row(3, 0, 0);
    };
};


// key pins
module key_pins_row(row, start, end) {
    for (hole_position=hole_positions) {
        translate(hole_position) {
	    for (pin_position=metal_pin_locations) {
    	        translate(pin_position) {
                    cylinder(h=bottom_lid_height+7.6, r=metal_pin_radius+0.2, $fn=50);
                };
            };
        };
    };
};

module key_pins_grid() {
    translate([hole_distance, (-hole_cube_width), 0]) {
        key_pins_row(1, 0, 0);
        key_pins_row(2, 0, 0);
        key_pins_row(3, 0, 0);
    };
};


module holes() {
    key_pins_grid();
    key_holders_grid();
    gpio_pin_socket();
};
