hole_cube_width = 14;
hole_distance = 5;
cylinder_fn = 50;

number_of_rows = 3;
number_of_columns = 5;

hole_positions = [
    for (row=[1:number_of_rows])
        for (x=[0:(number_of_columns-1)]) [
            x*hole_cube_width + x*hole_distance,
            (row * (hole_distance + hole_cube_width)),
            0
        ]
];

keyboard_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns + 21 + hole_distance;
keyboard_depth = hole_distance + (hole_cube_width + hole_distance)*number_of_rows;

bottom_plate_height = 0.7;
middle_plate_height=0.7;
top_plate_height=0.7;

screw_hole_radius = 1.2;
nut_hole_radius = 2.3;
nut_hole_mesh_radius = 4;

metal_pin_locations = [
    [3.2, 9.5, 0],
    [9.5, 12.1, 0]
];
metal_pin_radius = 0.8;

plastic_pin_locations = [
    [1.9, 7, 0],
    [12.1, 7, 0]
];
plastic_pin_radius = 0.9;

central_pin_location = [7, 7, 0];
central_pin_radius = 2.05;

bottom_lid_height = 2;

chip_pin_socket_mesh_depth = 2.2+((2.54-2.2)/2)+0.05; //0.05 to overlap
chip_pin_socket_mesh_width = 7;
chip_pin_socket_mesh_height = 4; // 6 mm long pins below the board holder
chip_pin_socket_hole_radius = 0.5+0.3+0.1;
chip_pin_socket_pitch = 2.54;

pin_socket_number_of_pins_in_a_row = 20;
first_pin_socket_pin_depth = hole_distance+0.8;
first_pin_socket_pin_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns+1.61;
second_pin_socket_pin_depth = first_pin_socket_pin_depth; //+17.78;
second_pin_socket_pin_width = hole_distance + (hole_cube_width + hole_distance)*number_of_columns+1.61+17.78;

first_row_pin_socket_pin_center_locations = [
    for (x=[0:pin_socket_number_of_pins_in_a_row-1]) [
        first_pin_socket_pin_width,
        first_pin_socket_pin_depth + x*chip_pin_socket_pitch,
        0
    ]
];

second_row_pin_socket_pin_center_locations = [
    for (x=[0:pin_socket_number_of_pins_in_a_row-1]) [
        second_pin_socket_pin_width,
        second_pin_socket_pin_depth + x*chip_pin_socket_pitch,
        0
    ]
];

gpio_holding_screw_locations = [
    [
        hole_distance + (hole_cube_width + hole_distance)*number_of_columns+4.8,
        hole_distance+0.8,
        0
    ],
    [
        hole_distance + (hole_cube_width + hole_distance)*number_of_columns+4.8+11.4,
        hole_distance+0.8,
        0
    ],
    [
        hole_distance + (hole_cube_width + hole_distance)*number_of_columns+4.8,
        hole_distance+0.8+47,
        0
    ],
    [
        hole_distance + (hole_cube_width + hole_distance)*number_of_columns+4.8+11.4,
        hole_distance+0.8+47,
        0
    ]
];
