include <modules/plates.scad>;

module_height = bottom_plate_height + top_plate_height;



// translate([0, 0, 4*module_height]) {
//     top_pcb_module();
// };

translate([0, 0, 2*module_height]) {
    bottom_pcb_module();
};

// bottom_plate();
