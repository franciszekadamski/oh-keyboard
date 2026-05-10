module directed_path(angle, length) {
    translate([hole_distance, -hole_cube_width, 0]) {
        rotate([0, 0, angle]) {
            cube([length, 1, 1.1]);
        };
		};
}
