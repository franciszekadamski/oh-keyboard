include <modules/plates.scad>;

module_height = bottom_plate_height + top_plate_height;


// translate([0, 0, 10*module_height]) {
//     case();
// };

// translate([0, 0, 6*module_height]) {
//     cover_plate();
// };

// translate([0, 0, 4*module_height]) {
//     top_pcb_module();
// };

// translate([0, 0, 2*module_height]) {
//     bottom_pcb_module();
// };

// bottom_plate();


translate([0, 0, keyboard_depth+4]) {
    rotate([-90, 0, 0]) {
        case();
    };
};
// cover_plate();
// top_pcb_module();
// bottom_pcb_module();
// bottom_plate();
