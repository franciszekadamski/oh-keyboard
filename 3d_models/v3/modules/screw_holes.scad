include <flat_case_v2_params.scad>;


// screw holes
module screw_hole_meshes() {
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            cylinder(h=4, r=nut_hole_mesh_radius, $fn=6);
        };
    };
};


module screw_holes() {
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            translate([0, 0, -1]) {
                cylinder(h=3, r=nut_hole_radius, $fn=6);
            };
        };
    };
    for (screw_center=screw_center_locations) {
        translate(screw_center) {
            translate([0, 0, -1]) {
                cylinder(h=6, r=screw_hole_radius, $fn=50);
            };
        };
    };

};
