hole_cube_width = 14;
hole_distance = 3;

number_of_rows = 3;
number_of_columns = 5;

keyboard_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns;
keyboard_depth = hole_distance + (hole_cube_width + hole_distance)*number_of_rows;
keyboard_height = 10;

chip_width = 23;
chip_depth = 51;
chip_shell_width = chip_width - hole_distance;
chip_shell_depth = chip_depth + hole_distance;
chip_shell_height = keyboard_height;

battery_shell_depth = keyboard_height;

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
        translate([hole_distance, hole_distance, -1]) cube([keyboard_width-(2*hole_distance), keyboard_depth-(1*hole_distance), keyboard_height-2]);
    }
};


// chip part
module chip_body_mesh() {
    translate([keyboard_width, 0, 0]) {
        cube([chip_shell_width, chip_shell_depth+hole_distance, chip_shell_height]);
    };
};

module main_keyboard_shell_hole() {
    translate([keyboard_width-(2*hole_distance), hole_distance, -1]) cube([chip_width, chip_depth, 2*chip_shell_height]);    
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

module chip_keyboard_and_battery_shell() {
    union() {
        keyboard_shell();
        chip_shell();
        battery_shell();
    };
};
// gpio socket
// screw holes
// bottom with wiring


// main
module keyboard() {
    difference() {
        chip_and_keyboard_shells();
        chip_and_keyboard_connection_hole();
    };
};

translate([(-keyboard_width/2), 0, 0]) {
    chip_keyboard_and_battery_shell();
};