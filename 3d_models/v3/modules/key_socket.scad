include <../params.scad>;

module key_holders_row(row, start, end) {
    for (hole_position=hole_positions)
        translate(hole_position) {
	    for (pin_position=plastic_pin_locations) {
    	        translate(pin_position) {
                    cylinder(h=bottom_lid_height+7.6, r=plastic_pin_radius, $fn=cylinder_fn);
                };
            };
	    translate(central_pin_location) {
                cylinder(h=bottom_lid_height+7.6, r=central_pin_radius, $fn=cylinder_fn);
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


module key_pins_row(row, start, end) {
    for (hole_position=hole_positions) {
        translate(hole_position) {
	    for (pin_position=metal_pin_locations) {
    	        translate(pin_position) {
                    cylinder(h=bottom_lid_height+7.6, r=metal_pin_radius+0.2, $fn=cylinder_fn);
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
