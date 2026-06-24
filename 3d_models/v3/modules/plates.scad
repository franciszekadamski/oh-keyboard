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
    // cube([keyboard_width, keyboard_depth, bottom_plate_height]);
    cube([keyboard_width-3, keyboard_depth-3, 2]);
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


module cover_plate_without_tracks() {
    difference() {
        difference() {
            difference() {
                cube([keyboard_width, keyboard_depth, 15]);
                translate([3, 3, -0.1]) {
                    cube([keyboard_width-6, keyboard_depth-6, 13.1]);
                };
            };
            translate([(hole_cube_width+hole_distance)*number_of_columns+hole_distance*0.5, 3, -1]) {
                cube([24, keyboard_depth-6, 5]);
            };
        };
        union() {
            translate([0, 0, -0.1]) {
                holes_grid();
                gpio_pin_socket();
            };
        };
    };
};


module cover_plate() {
    difference() {
        cover_plate_without_tracks();
        translate([3.001, 1, 2]) {
            cube([keyboard_width-3, keyboard_depth-2, 2.5]);
        }
    };
}


module case() {
    difference() {
        translate([-2, 2, 0]) {
            cube([keyboard_width+4, keyboard_depth+5+5, 38]);
        };
        union() {
            translate([-0.3, 0, 2]) {
                cube([keyboard_width+0.6, keyboard_depth+3.5, 15.5]);
            };
            translate([0.6, 0, 15]) {
                cube([keyboard_width-1.2, keyboard_depth+3.5, 21]);
            };
            translate([0, 4.5, 1]) {
                cube([keyboard_width+5, 2.5, 15.5+21-0.5]);
            };
        }
    };
};

module case_cover() {
    cube([keyboard_width+5, 15.5+21-1, 2]);
};
