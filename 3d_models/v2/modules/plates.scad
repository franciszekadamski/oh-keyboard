include <gpio_socket.scad>;
include <key_socket.scad>;
include <top_pcb_tracks.scad>;
include <bottom_pcb_tracks.scad>;


module holes() {
    key_pins_grid();
    key_holders_grid();
    gpio_pin_socket();
};


module bottom_plate() {
    cube([keyboard_width, keyboard_depth, bottom_plate_height]);
};


module plate_with_holes(height) {
    difference() {
        cube([keyboard_width, keyboard_depth, middle_plate_height]);
        translate([0, 0, -1]) {
            holes();
        };
    };
};


module top_pcb() {
    difference() {
        plate_with_holes(top_plate_height);
        top_pcb_tracks();
    };
};


module bottom_pcb() {
    difference() {
        plate_with_holes(bottom_plate_height);
        bottom_pcb_tracks();
    };
};


module top_pcb_module() {
    union() {
        translate([0, 0, bottom_plate_height]) {
            top_pcb();
        };
        plate_with_holes(bottom_plate_height);
    };
};


module bottom_pcb_module() {
    union() {
        translate([0, 0, bottom_plate_height]) {
            bottom_pcb();
        };
        plate_with_holes(bottom_plate_height);
    };
};




module holes_row(row, start, end) {
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

module cover_plate() {
    difference() {
        cube([keyboard_width, keyboard_depth, 5]);
        union() {
            holes_grid();
            gpio_pin_socket();
        };
    };
};


module case() {
    difference() {
        translate([-2, 2, 0]) {
            cube([keyboard_width+4, keyboard_depth+2, 22]);
        };
        union() {
            translate([0, 0, 2]) {
                cube([keyboard_width, keyboard_depth, 10.5]);
            };
            translate([0.3, 0, 11]) {
                cube([keyboard_width-0.6, keyboard_depth-1, 9.5]);
            };
        }
    };
};
