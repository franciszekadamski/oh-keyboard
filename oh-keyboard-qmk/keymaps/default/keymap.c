// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

enum layers {
  _OH_B,
  _OH_C,
};

enum {
    SPECIAL_KEY_1 = 0
};

enum {
    SINGLE_TAP = 1,
    SINGLE_HOLD = 2,
    DOUBLE_TAP = 3,
    DOUBLE_HOLD = 4
};

uint8_t cur_dance(tap_dance_state_t *state) {
    if (state->count == 1) {
        if (state->interrupted || !state->pressed) return SINGLE_TAP;
        else return SINGLE_HOLD;
    } else if (state->count == 2) {
        if (state->interrupted || !state->pressed) return DOUBLE_TAP;
        else return DOUBLE_HOLD;
    } else return 5; // More than 2 taps
}

typedef struct {
    bool is_press_action;
    uint8_t state;
} tap;

// Global state instance
static tap spcl_tap_state;

void spcl_finished(tap_dance_state_t *state, void *user_data) {
    spcl_tap_state.state = cur_dance(state);
    switch (spcl_tap_state.state) {
        case SINGLE_HOLD: 
            register_code(KC_LCTL);
            break;
        case SINGLE_TAP: 
            layer_move(_OH_B);
            break;
        case DOUBLE_TAP: 
            layer_move(_OH_C);
            break;
        case DOUBLE_HOLD: 
            register_code(KC_LALT);
            break;
    }
}

void spcl_reset(tap_dance_state_t *state, void *user_data) {
    switch (spcl_tap_state.state) {
        case SINGLE_HOLD: unregister_code(KC_LCTL); break;
        case SINGLE_TAP: /* One-shot handles itself */ break;
        case DOUBLE_TAP: /* One-shot handles itself */ break;
        case DOUBLE_HOLD: unregister_code(KC_LALT); break;
    }
    spcl_tap_state.state = 0;
}

tap_dance_action_t tap_dance_actions[] = {
    [SPECIAL_KEY_1] = ACTION_TAP_DANCE_FN_ADVANCED(NULL, spcl_finished, spcl_reset)
};

#include "aliases.c"
#include "combos.c"

// copied from https://beta.docs.qmk.fm/faqs/faq_debug#which-matrix-position-is-this-keypress
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  // If console is enabled, it will print the matrix position and status of each key pressed
#ifdef CONSOLE_ENABLE
    uprintf("KL: kc: 0x%04X, col: %u, row: %u, pressed: %b, time: %u, interrupt: %b, count: %u\n", keycode, record->event.key.col, record->event.key.row, record->event.pressed, record->event.time, record->tap.interrupted, record->tap.count);
#endif
  return true;
}

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_OH_B] = LAYOUT_ortho_3x5(
        B_1_1, B_1_2, B_1_3, B_1_4, B_1_5,
        B_2_1, B_2_2, B_2_3, B_2_4, B_2_5,
        B_3_1, B_3_2, B_3_3, B_3_4, TD(SPECIAL_KEY_1)
    ),
    [_OH_C] = LAYOUT_ortho_3x5(
        C_1_1, C_1_2, C_1_3, C_1_4, C_1_5,
        C_2_1, C_2_2, C_2_3, C_2_4, C_2_5,
        C_3_1, C_3_2, C_3_3, C_3_4, TD(SPECIAL_KEY_1)
    ),
};

