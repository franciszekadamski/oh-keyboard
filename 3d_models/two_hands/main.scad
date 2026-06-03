include <../v3/modules/gpio_socket.scad>

hole_edge = 14;
hole_distance = 5;

length =  5*(hole_edge+hole_distance) + hole_distance;
depth = hole_edge + 2*hole_distance;
height = hole_edge + 2*hole_distance;


module stick() {
	difference() {
		difference() {
			cube([length, depth, height]);
			translate([-2, hole_distance, hole_distance]) {
				cube([length+4, hole_edge, hole_edge]);
			};
		};
		union() {
			translate([hole_distance, hole_distance, 20]) {
				cube([hole_edge, hole_edge, 10]);
			};
			translate([(hole_distance+hole_edge)+hole_distance, hole_distance, 20]) {
				cube([hole_edge, hole_edge, 10]);
			};
			translate([2*(hole_distance+hole_edge)+hole_distance, hole_distance, 20]) {
				cube([hole_edge, hole_edge, 10]);
			};
			translate([3*(hole_distance+hole_edge)+hole_distance, hole_distance, 20]) {
				cube([hole_edge, hole_edge, 10]);
			};
			translate([4*(hole_distance+hole_edge)+hole_distance, hole_distance, 20]) {
				cube([hole_edge, hole_edge, 10]);
			};
		};
	};
};


module board_case() {
	difference() {
		translate([length-2, 2, 0]) {
			difference() {
				cube([25, 55, 20]);
				translate([1, 1, -2]) {
					cube([25-2, 55-2, 20]);
				};
				translate([0, 1, 5]) {
					cube([90, 55-2, 10]);
				};
			};
		};
		gpio_pin_socket();
	};
};


translate([-length/2, 2, 0]) {
	stick();
};
translate([-length/2, -depth, 0]) {
	stick();
};

translate([-length/2 + 5, -depth, 0]) {
	board_case();
}
