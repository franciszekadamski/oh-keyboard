include <../params.scad>;
include <pcb_track_helpers.scad>;


// ground
module bottom_pcb_tracks() {
    for (hole_position=hole_positions) {
        translate(hole_position) {
            directed_path(0, 2);
        };
    };
};
