include <../params.scad>;
include <pcb_track_helpers.scad>;


// ground
module top_pcb_tracks() {
    translate(hole_positions[0]) {
        translate([3, metal_pin_locations[0][1], 0]) {
            directed_path(-90, 12);
            translate([0, -12, 0]) {
                directed_path(0, 85);
                translate([85, 0, 0]) {
                    directed_path(50, 6);
                };
            };
        };
    };
    translate(hole_positions[1]) {
        translate([3, metal_pin_locations[0][1], 0]) {
            directed_path(-90, 10.5);
            translate([0, -10.5, 0]) {
                directed_path(0, 66);
                translate([66, 0, 0]) {
                    directed_path(59.33, 9);
                };
            };
        };
    };
    translate(hole_positions[2]) {
        translate([3, metal_pin_locations[0][1], 0]) {
            directed_path(-90, 9);
            translate([0, -9, 0]) {
                directed_path(0, 47);
                translate([47, 0, 0]) {
                    directed_path(58, 11);
                };
            };
        };
    };
    translate(hole_positions[3]) {
        translate([3, metal_pin_locations[0][1], 0]) {
            directed_path(-90, 7.5);
            translate([0, -7.5, 0]) {
                directed_path(0, 28);
                translate([28, 0, 0]) {
                    directed_path(56, 12.5);
                };
            };
        };
    };
    translate(hole_positions[4]) {
        translate([3, metal_pin_locations[0][1], 0]) {
            directed_path(-90, 6);
            translate([0, -6, 0]) {
                directed_path(0, 9.21);
                translate([9.21, 0, 0]) {
                    directed_path(56, 14);
                };
            };
        };
    };


    translate([0, 18, 0]) {
        translate(hole_positions[0]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 12);
                translate([0, -12, 0]) {
                    directed_path(0, 85);
                    translate([85, 0, 0]) {
                        directed_path(50, 6);
                    };
                };
            };
        };
        translate(hole_positions[1]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 10.5);
                translate([0, -10.5, 0]) {
                    directed_path(0, 66.5);
                    translate([66.5, 0, 0]) {
                        directed_path(50, 7);
                    };
                };
            };
        };
        translate(hole_positions[2]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 9);
                translate([0, -9, 0]) {
                    directed_path(0, 48);
                    translate([48, 0, 0]) {
                        directed_path(52.8, 8);
                    };
                };
            };
        };
        translate(hole_positions[3]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 7.5);
                translate([0, -7.5, 0]) {
                    directed_path(0, 29);
                    translate([29, 0, 0]) {
                        directed_path(51.6, 9);
                    };
                };
            };
        };
        translate(hole_positions[4]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 6);
                translate([0, -6, 0]) {
                    directed_path(0, 10);
                    translate([10, 0, 0]) {
                        directed_path(59, 13.3);
                    };
                };
            };
        };
    };

    translate([0, 36, 0]) {
        translate(hole_positions[0]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 12);
                translate([0, -12, 0]) {
                    directed_path(0, 87);
                    translate([87, 0, 0]) {
                        directed_path(30, 2.5);
                    };
                };
            };
        };
        translate(hole_positions[1]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 10.5);
                translate([0, -10.5, 0]) {
                    directed_path(0, 69);
                    translate([69, 0, 0]) {
                        directed_path(55, 3);
                    };
                };
            };
        };
        translate(hole_positions[2]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 9);
                translate([0, -9, 0]) {
                    directed_path(0, 49.5);
                    translate([50, 0, 0]) {
                        directed_path(52, 4.5);
                    };
                };
            };
        };
        translate(hole_positions[3]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 7.5);
                translate([0, -7.5, 0]) {
                    directed_path(0, 30.5);
                    translate([30.5, 0, 0]) {
                        directed_path(59, 8);
                    };
                };
            };
        };
        translate(hole_positions[4]) {
            translate([3, metal_pin_locations[0][1], 0]) {
                directed_path(-90, 6);
                translate([0, -6, 0]) {
                    directed_path(0, 11);
                    translate([11, 0, 0]) {
                        directed_path(55, 10);
                    };
                };
            };
        };
    };
};
