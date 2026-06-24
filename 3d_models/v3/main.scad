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


translate([-0.5*keyboard_width, 0, keyboard_depth+7+5]) {
    rotate([-90, 0, 0]) {
        case();
    };
};

translate([-0.5*keyboard_width-2, -keyboard_depth/2-6, 0]) case_cover();

// case();

// translate([-keyboard_width-1, -2, 15]) {
// 		rotate([180, 0, 0]) {
// 			cover_plate();
// 		};
// };

// translate([0, -keyboard_depth-1, 0]) {
// 	bottom_plate();
// };

// for (x_location=[-20, -10, 0, 10, 20]) {
// 	translate([x_location, -keyboard_depth-10, 0]) {
// 		bolt();
// 	};
// };


// // bolts for strandbeest
// for (x_location=[-50, -45, -40, -35, -30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50]) {
// 	translate([x_location, -keyboard_depth-20, 0]) {
// 		cylinder(h=1, r=2, $fn=cylinder_fn);
// 		cylinder(h=13, r=0.9, $fn=cylinder_fn);
// 	};
// };


// for (x_location=[-50, -45, -40, -35, -30, -25, -20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50]) {
// 	translate([x_location, -keyboard_depth-30, 0]) {
// 		difference() {
// 			cylinder(h=1, r=2, $fn=cylinder_fn);
// 			cylinder(h=2, r=1, $fn=cylinder_fn);
// 		};
// 	};
// };

// for (x_location=[-10, 0]) {
// 	translate([x_location, -keyboard_depth-40, 0]) {
// 		difference() {
// 			cylinder(h=1.5, r=4, $fn=cylinder_fn);
// 			union() {
// 				cube([1.1, 1.1, 5], center=true);
// 				translate([2, 0, 0]) {
// 					cylinder(h=2, r=1.1, $fn=cylinder_fn);
// 				};
// 			};
// 		};
// 	};
// };
