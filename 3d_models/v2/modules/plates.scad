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
