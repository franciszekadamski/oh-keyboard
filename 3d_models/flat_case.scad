hole_cube_width = 14;
hole_distance = 3;

number_of_rows = 3;
number_of_columns = 5;

keyboard_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns;
keyboard_depth = hole_distance + (hole_cube_width + hole_distance)*number_of_rows;
keyboard_height = 10;

chip_shell_width = 23 + hole_distance;
chip_shell_depth = 51 + hole_distance;
chip_shell_height = keyboard_height;

// key part
module holes_row(row, start, end) {
    hole_positions = [
        for (x=[start:(number_of_columns-1-end)]) [
            x*hole_cube_width + x*hole_distance,
            row * (hole_distance + hole_cube_width),
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
    cube([keyboard_width, keyboard_depth, keyboard_height]);
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
        translate([1, 1, -1]) cube([keyboard_width-2, keyboard_depth-2, keyboard_height-2]);
    }
};

// chip part
module chip_shell() {
    translate([keyboard_width, 0, 0]) {
        cube([chip_shell_width, chip_shell_depth, chip_shell_height]);
    };
};

// main
module keyboard() {
    union() {
        chip_shell();
        keyboard_shell();
    };
};

translate([(-keyboard_width/2), (-keyboard_depth/2), 50]) {
    keyboard();
};