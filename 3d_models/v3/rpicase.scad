width = 50;
depth = 40;
height = 5;
wall_width = 2;
screen_width = 44;
screen_depth = 34;

module shell_mesh(width, depth, height, wall_width) {
    difference() {
        cube([width+(wall_width*2), depth+(wall_width*2), height+wall_width*3]);
        translate([wall_width, wall_width, wall_width]) cube([width, depth, height*10]);
    };
};

module slide(width, depth, height, wall_width) {
    cube([width+wall_width-0.7, depth+wall_width-0.7, wall_width-0.7]);
};

module slide_with_margin(width, depth, height, wall_width) {
    translate([wall_width/2, wall_width/2, height+wall_width]) slide(width, depth, height, wall_width);
};

module shell_with_tracks(width, depth, height, wall_width) {
    difference() {
        shell_mesh(width, depth, height, wall_width);
        slide_with_margin(width, depth, height, wall_width);
    };
};

module shell_with_screen_cutout(width, depth, height, wall_width, screen_width, screen_depth) {
    difference() {
        shell_with_tracks(width, depth, height, wall_width);
        translate([(width-screen_width-wall_width/2), (depth-screen_depth-wall_width/2), -height/2]) cube([screen_width, screen_depth, height]);
    };
};

module screen_case() {
    translate([-(width+wall_width)/2, -(depth+wall_width)/2, 0]) {
        shell_with_screen_cutout(width, depth, height, wall_width, screen_width, screen_depth);
    };
};

module keyboard_case() {
    difference() {
        union() {
            shell_with_tracks(289, 34, 103, wall_width);
            translate([289+wall_width*2, -2, 0]) {
                rotate([0, 0, 180]) {
                    shell_with_tracks(289, 34, 103, wall_width);
                };
            };
        };
        translate([(289+wall_width*2)/2, -100, -10]) {
            cube([300, 300, 300]);
        };
    };
    translate([0, 42, 0]) slide(289/2, 34, 103, wall_width);
    translate([0, -84, 0]) slide(289/2, 34, 103, wall_width);
    translate([0, -126, 0]) slide(103, 34, 103, wall_width);
    translate([0, 84, 0]) slide(103, 34, 103, wall_width);
}

translate([-289/4, 0, 0]) keyboard_case();
