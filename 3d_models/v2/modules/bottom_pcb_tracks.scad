include <../params.scad>;
include <pcb_track_helpers.scad>;


// ground
module bottom_pcb_tracks() {
    for (hole_position=hole_positions) {
        translate(hole_position) {
            translate([0, metal_pin_locations[1][1]-0.5, 0]) {
                directed_path(0, 18.1);
            };
        };
    };
    translate([90.1, 30, 0]) {
        directed_path(90, 36.5);
    };
    translate([90, 60.2, 0]) {
        directed_path(0, 2);
    };
};
