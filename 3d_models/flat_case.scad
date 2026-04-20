hole_cube_width = 14;
hole_distance = 4;

number_of_rows = 3;
number_of_columns = 5;

keyboard_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns;
keyboard_depth = hole_distance + (hole_cube_width + hole_distance)*number_of_rows;
keyboard_height = 13;

chip_width = 23;
chip_depth = 51;
chip_shell_width = chip_width + hole_distance;
chip_shell_depth = chip_depth + 2*hole_distance;
chip_shell_height = keyboard_height;

battery_shell_depth = 14;

screw_hole_radius = 1.2;
nut_hole_radius = 2.3;
nut_hole_mesh_radius = 4;

screw_center_locations = [
    [nut_hole_mesh_radius, nut_hole_mesh_radius, 0],
    [keyboard_width+chip_shell_width-nut_hole_mesh_radius, nut_hole_mesh_radius, 0],
    [nut_hole_mesh_radius, keyboard_depth+battery_shell_depth+nut_hole_mesh_radius-(hole_distance/2), 0],
    [keyboard_width+chip_shell_width-nut_hole_mesh_radius, keyboard_depth+battery_shell_depth+nut_hole_mesh_radius-(hole_distance/2), 0]
];

metal_pin_locations = [
    [3.2, 9.5, 0],
    [9.5, 12.1, 0]
];
metal_pin_radius = 0.8;

plastic_pin_locations = [
    [1.9, 7, 0],
    [12.1, 7, 0]
];
plastic_pin_radius = 0.9;

central_pin_location = [7, 7, 0];
central_pin_radius = 2.05;

// keyboard part
module holes_row(row, start, end) {
    hole_positions = [
        for (x=[start:(number_of_columns-1-end)]) [
            x*hole_cube_width + x*hole_distance,
            (row * (hole_distance + hole_cube_width)),
            0
        ]
    ];

    for (hole_position=hole_positions)
        translate(hole_position) {
            cube([hole_cube_width, hole_cube_width, 20]);
        };
};

module holes_grid() {
    translate([hole_distance, (-hole_cube_width), 0]) {
        holes_row(1, 0, 0);
        holes_row(2, 0, 0);
        holes_row(3, 0, 0);
    };
};

module body_mesh() {
    cube([keyboard_width, keyboard_depth+hole_distance, keyboard_height]);
};

module body_mesh_cutout() {
    difference() {
        body_mesh();
        holes_grid();
    }
};

module keyboard_shell() {
    difference() {
        body_mesh_cutout();
        translate([hole_distance, hole_distance, -2]) cube([keyboard_width-(2*hole_distance), keyboard_depth-(1*hole_distance), keyboard_height]);
    }
};


// chip part
module chip_body_mesh() {
    translate([keyboard_width, 0, 0]) {
        cube([chip_shell_width, chip_shell_depth+hole_distance, chip_shell_height]);
    };
};

module main_keyboard_shell_hole() {
    translate([keyboard_width, hole_distance+3, -1]) cube([chip_width, chip_depth, 2*chip_shell_height]);    
};

module chip_shell() {
    difference() {
        chip_body_mesh();
        main_keyboard_shell_hole();
    };
};

module chip_and_keyboard_connection_hole() {
    translate([3*hole_distance, hole_distance, -5]) cube([keyboard_width-(2*hole_distance), keyboard_depth-(1*hole_distance), keyboard_height-2]);
};

// battery case on the front
module battery_shell_hole() {
    translate([hole_distance, keyboard_depth + hole_distance, -2]) cube([keyboard_width+chip_shell_width-(2*hole_distance), battery_shell_depth, keyboard_height]);
};

module battery_body_mesh() {
    translate([0, keyboard_depth + hole_distance, 0]) cube([keyboard_width+chip_shell_width, battery_shell_depth+hole_distance, keyboard_height]);
};

module battery_shell() {
    difference() {
        battery_body_mesh();
        battery_shell_hole();
    };
};

module screw_hole_meshes() {
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            cylinder(h=4, r=nut_hole_mesh_radius, $fn=6);
        };
    };
};

module chip_keyboard_and_battery_shell() {
    union() {
        keyboard_shell();
        difference() {
            chip_shell();
            battery_shell_hole();
        };
        battery_shell();
        screw_hole_meshes();
    };
};

// gpio socket
// screw holes
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

// bottom with wiring
module bottom_lid() {
    cube(
        [
            keyboard_width+chip_shell_width,
            keyboard_depth+battery_shell_depth+2*hole_distance,
            2
        ]
    );
};

module bottom_lid_with_screw_holes() {
    difference() {
        bottom_lid();
        translate([0, 0, -1]) screw_holes();
    };
};

module key_holders_row(row, start, end) {
    hole_positions = [
        for (x=[start:(number_of_columns-1-end)]) [
            x*hole_cube_width + x*hole_distance,
            (row * (hole_distance + hole_cube_width)),
            0
        ]
    ];

    for (hole_position=hole_positions)
        translate(hole_position) {
	    for (pin_position=plastic_pin_locations) {
    	        translate(pin_position) {
                    difference() {
                        cylinder(h=8, r=plastic_pin_radius+0.5, $fn=50);
                        cylinder(h=8.1, r=plastic_pin_radius, $fn=50);
        	    };
                };
            };
	    translate(central_pin_location) {
                difference() {
                    cylinder(h=8, r=central_pin_radius+0.5, $fn=50);
                    cylinder(h=8.1, r=central_pin_radius, $fn=50);
                };
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

module bottom_lid_with_holders() {
    union() {
        bottom_lid_with_screw_holes();
	key_holders_grid();
    };
};

translate([0, 0, -20]) bottom_lid_with_holders();


// keyboard top shell
module keyboard() {
    difference() {
        difference() {
            chip_keyboard_and_battery_shell();
            chip_and_keyboard_connection_hole();
        };
        screw_holes();
    };
};

module top_text() {
    translate([hole_distance, keyboard_depth+hole_distance, keyboard_height-1]) {
        linear_extrude(2.1) {
            text("岁月静好", size=12, font="AR PL UKai CN:style=Book");
        };
    };
};

module vertical_text() {
    rotate([90, 0, 180]) {
        translate([-keyboard_width-chip_shell_width+hole_distance, hole_distance-1, keyboard_depth+20]) {
            linear_extrude(2.1) {
                text("OH Keyboard", size=7, font="AR PL UKai CN:style=Book");
            };
        };
        translate([-keyboard_width+32, hole_distance-2, keyboard_depth+20]) {
            linear_extrude(2.1) {
                text("by Franciszek Adamski", size=3, font="AR PL UKai CN:style=Book");
            };
        };
    }; 
};

module keyboard_with_text() {
    difference() {
        keyboard();
        union() {
            top_text();
            vertical_text();
        };
    };
};
translate([0, 0, 0]) {
    keyboard_with_text();
};

// vertical_text();
