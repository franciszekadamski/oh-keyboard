// Copyright 2026 Franciszek Adamski
// SPDX-License-Identifier: GPL-3.0-or-later

enum combo_events{
    OH_W,
    OH_F,
    OH_Y,
    OH_P,
    OH_C,
    OH_X,
    OH_T,
    OH_N,
    OH_O,
    OH_B,
    OH_Z,
    OH_R,
    OH_E,
    OH_U,
    OH_G,
    OH_D,
    OH_S,
    OH_A,
    OH_V,
    OH_M,
    OH_ESC,
    OH_UP,
    OH_SPACE,
    OH_LEFT,
    OH_DOWN,
    OH_RIGHT,
    OH_F1,
    OH_F2,
    OH_F3,
    OH_F4,
    OH_F5,
    OH_F6,
    OH_F7,
    OH_F8,
    OH_F9,
    OH_F10,
    OH_F11,
    OH_F12,
    OH_CAPS,
    OH_TAB,
    OH_BACKSPACE,
    OH_PRINTSCREEN,
    OH_SCROLL_LOCK,
    OH_ENTER,
    OH_HOME,
    OH_END,
    OH_SEMICOLON,
    OH_SEMICOLON_3_KEY,
    OH_QUOTE,
    OH_QUOTE_3_KEY,
    OH_BACKSLASH,
    OH_BACKSLASH_3_KEY,
    OH_COMMA,
    OH_COMMA_3_KEY,
    OH_PERIOD,
    OH_PERIOD_3_KEY,
    OH_SLASH,
    OH_SLASH_3_KEY,
    OH_1,
    OH_2,
    OH_3,
    OH_4,
    OH_5,
    OH_6,
    OH_7,
    OH_8,
    OH_9,
    OH_0,
    OH_MINUS,
    OH_EQUAL,
    OH_LBRACKET,
    OH_RBRACKET,
    OH_TICK,
    COMBO_LENGTH
};

uint16_t COMBO_LEN = COMBO_LENGTH;

// alphabet layer
const uint16_t PROGMEM oh_a[] = {B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_b[] = {B_2_2, B_2_3, COMBO_END};
const uint16_t PROGMEM oh_c[] = {B_1_2, B_1_3, COMBO_END};
const uint16_t PROGMEM oh_d[] = {B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_e[] = {B_2_2, B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f[] = {B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_g[] = {B_2_2, B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_m[] = {B_1_2, B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_n[] = {B_2_2, B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_o[] = {B_1_2, B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_p[] = {B_1_2, B_2_3, COMBO_END};
const uint16_t PROGMEM oh_r[] = {B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_s[] = {B_2_2, B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_t[] = {B_1_2, B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_u[] = {B_2_2, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_v[] = {B_1_2, B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_w[] = {B_2_2, B_1_3, COMBO_END};
const uint16_t PROGMEM oh_x[] = {B_1_2, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_y[] = {B_1_2, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_z[] = {B_2_2, B_2_4, COMBO_END};

// numeric layer
const uint16_t PROGMEM oh_0[] = {C_2_3, C_2_4, COMBO_END};
const uint16_t PROGMEM oh_9[] = {C_2_2, C_2_3, COMBO_END};
const uint16_t PROGMEM oh_7[] = {C_1_2, C_1_3, COMBO_END};
const uint16_t PROGMEM oh_8[] = {C_1_3, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_comma[] = {C_2_2, C_1_3, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_rbracket[] = {C_2_3, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_quote[] = {C_2_2, C_2_3, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_semicolon[] = {C_1_2, C_2_3, C_2_4, COMBO_END};
const uint16_t PROGMEM oh_minus[] = {C_2_2, C_2_3, C_2_4, COMBO_END};
const uint16_t PROGMEM oh_slash[] = {C_1_2, C_2_3, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_tick[] = {C_1_2, C_2_3, COMBO_END};
const uint16_t PROGMEM oh_lbracket[] = {C_1_3, C_2_4, COMBO_END};
const uint16_t PROGMEM oh_backslash[] = {C_2_2, C_1_3, C_2_4, COMBO_END};
const uint16_t PROGMEM oh_period[] = {C_1_2, C_1_3, C_2_4, COMBO_END};
// const uint16_t PROGMEM oh_u[] = {C_2_2, C_1_4, COMBO_END};
const uint16_t PROGMEM oh_equal[] = {C_1_2, C_1_3, C_1_4, COMBO_END};
// const uint16_t PROGMEM oh_w[] = {C_2_2, C_1_3, COMBO_END};
// const uint16_t PROGMEM oh_x[] = {C_1_2, C_1_4, COMBO_END};
// const uint16_t PROGMEM oh_y[] = {C_1_2, C_2_4, COMBO_END};
// const uint16_t PROGMEM oh_z[] = {C_2_2, C_2_4, COMBO_END};

// non-alphanumeric keys
const uint16_t PROGMEM oh_esc[] = {TD(SPECIAL_KEY_1), B_1_2, COMBO_END};
const uint16_t PROGMEM oh_up[] = {TD(SPECIAL_KEY_1), B_1_3, COMBO_END};
const uint16_t PROGMEM oh_space[] = {TD(SPECIAL_KEY_1), B_1_4, COMBO_END};
const uint16_t PROGMEM oh_left[] = {TD(SPECIAL_KEY_1), B_2_2, COMBO_END};
const uint16_t PROGMEM oh_down[] = {TD(SPECIAL_KEY_1), B_2_3, COMBO_END};
const uint16_t PROGMEM oh_right[] = {TD(SPECIAL_KEY_1), B_2_4, COMBO_END};
const uint16_t PROGMEM oh_f1[] = {TD(SPECIAL_KEY_1), B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_f2[] = {TD(SPECIAL_KEY_1), B_2_2, B_2_3, COMBO_END};
const uint16_t PROGMEM oh_f3[] = {TD(SPECIAL_KEY_1), B_1_2, B_1_3, COMBO_END};
const uint16_t PROGMEM oh_f4[] = {TD(SPECIAL_KEY_1), B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f5[] = {TD(SPECIAL_KEY_1), B_2_2, B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f6[] = {TD(SPECIAL_KEY_1), B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f7[] = {TD(SPECIAL_KEY_1), B_2_2, B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f8[] = {TD(SPECIAL_KEY_1), B_1_2, B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_f9[] = {TD(SPECIAL_KEY_1), B_2_2, B_2_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_f10[] = {TD(SPECIAL_KEY_1), B_1_2, B_2_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_f11[] = {TD(SPECIAL_KEY_1), B_1_2, B_2_3, COMBO_END};
const uint16_t PROGMEM oh_f12[] = {TD(SPECIAL_KEY_1), B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_caps[] = {TD(SPECIAL_KEY_1), B_2_2, B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_tab[] = {TD(SPECIAL_KEY_1), B_1_2, B_1_3, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_backspace[] = {TD(SPECIAL_KEY_1), B_2_2, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_printscreen[] = {TD(SPECIAL_KEY_1), B_1_2, B_1_3, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_scroll_lock[] = {TD(SPECIAL_KEY_1), B_2_2, B_1_3, COMBO_END};
const uint16_t PROGMEM oh_enter[] = {TD(SPECIAL_KEY_1), B_1_2, B_1_4, COMBO_END};
const uint16_t PROGMEM oh_home[] = {TD(SPECIAL_KEY_1), B_1_2, B_2_4, COMBO_END};
const uint16_t PROGMEM oh_end[] = {TD(SPECIAL_KEY_1), B_2_2, B_2_4, COMBO_END};


// old 3 or 4-key combos
 const uint16_t PROGMEM oh_semicolon_3_key[] = {B_3_4, B_1_2, COMBO_END};
 const uint16_t PROGMEM oh_quote_3_key[] = {B_3_4, B_1_3, COMBO_END};
 const uint16_t PROGMEM oh_backslash_3_key[] = {B_3_4, B_1_4, COMBO_END};
 const uint16_t PROGMEM oh_comma_3_key[] = {B_3_4, B_2_2, COMBO_END};
 const uint16_t PROGMEM oh_period_3_key[] = {B_3_4, B_2_3, COMBO_END};
 const uint16_t PROGMEM oh_slash_3_key[] = {B_3_4, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_1[] = {B_3_4, B_2_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_2[] = {B_3_4, B_2_2, B_2_3, COMBO_END};
// const uint16_t PROGMEM oh_3[] = {B_3_4, B_1_2, B_1_3, COMBO_END};
// const uint16_t PROGMEM oh_4[] = {B_3_4, B_1_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_5[] = {B_3_4, B_2_2, B_1_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_6[] = {B_3_4, B_2_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_7[] = {B_3_4, B_2_2, B_2_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_8[] = {B_3_4, B_1_2, B_2_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_9[] = {B_3_4, B_2_2, B_2_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_0[] = {B_3_4, B_1_2, B_2_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_minus[] = {B_3_4, B_1_2, B_2_3, COMBO_END};
// const uint16_t PROGMEM oh_equal[] = {B_3_4, B_1_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_lbracket[] = {B_3_4, B_2_2, B_1_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_rbracket[] = {B_3_4, B_1_2, B_1_3, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_tick[] = {B_3_4, B_2_2, B_1_4, COMBO_END};

// some leftovers
// const uint16_t PROGMEM oh_v[] = {B_1_2, B_1_3, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_w[] = {B_2_2, B_1_3, COMBO_END};
// const uint16_t PROGMEM oh_x[] = {B_1_2, B_1_4, COMBO_END};
// const uint16_t PROGMEM oh_y[] = {B_1_2, B_2_4, COMBO_END};
// const uint16_t PROGMEM oh_z[] = {B_2_2, B_2_4, COMBO_END};

combo_t key_combos[] = {
    [OH_W] = COMBO_ACTION(oh_w),
    [OH_F] = COMBO_ACTION(oh_f),
    [OH_Y] = COMBO_ACTION(oh_y),
    [OH_P] = COMBO_ACTION(oh_p),
    [OH_C] = COMBO_ACTION(oh_c),
    [OH_X] = COMBO_ACTION(oh_x),
    [OH_T] = COMBO_ACTION(oh_t),
    [OH_N] = COMBO_ACTION(oh_n),
    [OH_O] = COMBO_ACTION(oh_o),
    [OH_B] = COMBO_ACTION(oh_b),
    [OH_Z] = COMBO_ACTION(oh_z),
    [OH_R] = COMBO_ACTION(oh_r),
    [OH_E] = COMBO_ACTION(oh_e),
    [OH_U] = COMBO_ACTION(oh_u),
    [OH_G] = COMBO_ACTION(oh_g),
    [OH_D] = COMBO_ACTION(oh_d),
    [OH_S] = COMBO_ACTION(oh_s),
    [OH_A] = COMBO_ACTION(oh_a),
    [OH_V] = COMBO_ACTION(oh_v),
    [OH_M] = COMBO_ACTION(oh_m),
    [OH_ESC] = COMBO_ACTION(oh_esc),
    [OH_UP] = COMBO_ACTION(oh_up),
    [OH_SPACE] = COMBO_ACTION(oh_space),
    [OH_LEFT] = COMBO_ACTION(oh_left),
    [OH_DOWN] = COMBO_ACTION(oh_down),
    [OH_RIGHT] = COMBO_ACTION(oh_right),
    [OH_F1] = COMBO_ACTION(oh_f1),
    [OH_F2] = COMBO_ACTION(oh_f2),
    [OH_F3] = COMBO_ACTION(oh_f3),
    [OH_F4] = COMBO_ACTION(oh_f4),
    [OH_F5] = COMBO_ACTION(oh_f5),
    [OH_F6] = COMBO_ACTION(oh_f6),
    [OH_F7] = COMBO_ACTION(oh_f7),
    [OH_F8] = COMBO_ACTION(oh_f8),
    [OH_F9] = COMBO_ACTION(oh_f9),
    [OH_F10] = COMBO_ACTION(oh_f10),
    [OH_F11] = COMBO_ACTION(oh_f11),
    [OH_F12] = COMBO_ACTION(oh_f12),
    [OH_CAPS] = COMBO_ACTION(oh_caps),
    [OH_TAB] = COMBO_ACTION(oh_tab),
    [OH_BACKSPACE] = COMBO_ACTION(oh_backspace),
    [OH_PRINTSCREEN] = COMBO_ACTION(oh_printscreen),
    [OH_SCROLL_LOCK] = COMBO_ACTION(oh_scroll_lock),
    [OH_ENTER] = COMBO_ACTION(oh_enter),
    [OH_HOME] = COMBO_ACTION(oh_home),
    [OH_END] = COMBO_ACTION(oh_end),
    [OH_SEMICOLON] = COMBO_ACTION(oh_semicolon),
    [OH_QUOTE] = COMBO_ACTION(oh_quote),
    [OH_BACKSLASH] = COMBO_ACTION(oh_backslash),
    [OH_COMMA] = COMBO_ACTION(oh_comma),
    [OH_PERIOD] = COMBO_ACTION(oh_period),
    [OH_SLASH] = COMBO_ACTION(oh_slash),
    [OH_SEMICOLON_3_KEY] = COMBO_ACTION(oh_semicolon_3_key),
    [OH_QUOTE_3_KEY] = COMBO_ACTION(oh_quote_3_key),
    [OH_BACKSLASH_3_KEY] = COMBO_ACTION(oh_backslash_3_key),
    [OH_COMMA_3_KEY] = COMBO_ACTION(oh_comma_3_key),
    [OH_PERIOD_3_KEY] = COMBO_ACTION(oh_period_3_key),
    [OH_SLASH_3_KEY] = COMBO_ACTION(oh_slash_3_key),
//     [OH_1] = COMBO_ACTION(oh_1),
//     [OH_2] = COMBO_ACTION(oh_2),
//     [OH_3] = COMBO_ACTION(oh_3),
//     [OH_4] = COMBO_ACTION(oh_4),
//     [OH_5] = COMBO_ACTION(oh_5),
//     [OH_6] = COMBO_ACTION(oh_6),
    [OH_7] = COMBO_ACTION(oh_7),
    [OH_8] = COMBO_ACTION(oh_8),
    [OH_9] = COMBO_ACTION(oh_9),
    [OH_0] = COMBO_ACTION(oh_0),
    [OH_MINUS] = COMBO_ACTION(oh_minus),
    [OH_EQUAL] = COMBO_ACTION(oh_equal),
    [OH_LBRACKET] = COMBO_ACTION(oh_lbracket),
    [OH_RBRACKET] = COMBO_ACTION(oh_rbracket),
    [OH_TICK] = COMBO_ACTION(oh_tick)
};


void process_combo_event(uint16_t combo_index, bool pressed) {
    switch(combo_index) {
        case OH_W:
            if (pressed) {
                register_code(KC_W);
            } else {
                unregister_code(KC_W);
            }
        break;
        case OH_F:
            if (pressed) {
                register_code(KC_F);
            } else {
                unregister_code(KC_F);
            }
        break;
        case OH_Y:
            if (pressed) {
                register_code(KC_Y);
            } else {
                unregister_code(KC_Y);
            }
        break;
        case OH_P:
            if (pressed) {
                register_code(KC_P);
            } else {
                unregister_code(KC_P);
            }
        break;
        case OH_C:
            if (pressed) {
                register_code(KC_C);
            } else {
                unregister_code(KC_C);
            }
        break;
        case OH_X:
            if (pressed) {
                register_code(KC_X);
            } else {
                unregister_code(KC_X);
            }
        break;
        case OH_T:
            if (pressed) {
                register_code(KC_T);
            } else {
                unregister_code(KC_T);
            }
        break;
        case OH_N:
            if (pressed) {
                register_code(KC_N);
            } else {
                unregister_code(KC_N);
            }
        break;
        case OH_O:
            if (pressed) {
                register_code(KC_O);
            } else {
                unregister_code(KC_O);
            }
        break;
        case OH_B:
            if (pressed) {
                register_code(KC_B);
            } else {
                unregister_code(KC_B);
            }
        break;
        case OH_Z:
            if (pressed) {
                register_code(KC_Z);
            } else {
                unregister_code(KC_Z);
            }
        break;
        case OH_R:
            if (pressed) {
                register_code(KC_R);
            } else {
                unregister_code(KC_R);
            }
        break;
        case OH_E:
            if (pressed) {
                register_code(KC_E);
            } else {
                unregister_code(KC_E);
            }
        break;
        case OH_U:
            if (pressed) {
                register_code(KC_U);
            } else {
                unregister_code(KC_U);
            }
        break;
        case OH_G:
            if (pressed) {
                register_code(KC_G);
            } else {
                unregister_code(KC_G);
            }
        break;
        case OH_D:
            if (pressed) {
                register_code(KC_D);
            } else {
                unregister_code(KC_D);
            }
        break;
        case OH_S:
            if (pressed) {
                register_code(KC_S);
            } else {
                unregister_code(KC_S);
            }
        break;
        case OH_A:
            if (pressed) {
                register_code(KC_A);
            } else {
                unregister_code(KC_A);
            }
        break;
        case OH_V:
            if (pressed) {
                register_code(KC_V);
            } else {
                unregister_code(KC_V);
            }
        break;
        case OH_M:
            if (pressed) {
                register_code(KC_M);
            } else {
                unregister_code(KC_M);
            }
        break;


        case OH_ESC:
            if (pressed) {
                tap_code(KC_ESC);
            }
        break;


        case OH_UP:
            if (pressed) {
                register_code(KC_UP);
            } else {
                unregister_code(KC_UP);
            }
        break;
        case OH_SPACE:
            if (pressed) {
                register_code(KC_SPACE);
            } else {
                unregister_code(KC_SPACE);
            }
        break;
        case OH_LEFT:
            if (pressed) {
                register_code(KC_LEFT);
            } else {
                unregister_code(KC_LEFT);
            }
        break;
        case OH_DOWN:
            if (pressed) {
                register_code(KC_DOWN);
            } else {
                unregister_code(KC_DOWN);
            }
        break;
        case OH_RIGHT:
            if (pressed) {
                register_code(KC_RIGHT);
            } else {
                unregister_code(KC_RIGHT);
            }
        break;

        case OH_F1:
            if (pressed) {
                tap_code(KC_F1);
            }
        break;
        case OH_F2:
            if (pressed) {
                tap_code(KC_F2);
            }
        break;
        case OH_F3:
            if (pressed) {
                tap_code(KC_F3);
            }
        break;
        case OH_F4:
            if (pressed) {
                tap_code(KC_F4);
            }
        break;
        case OH_F5:
            if (pressed) {
                tap_code(KC_F5);
            }
        break;
        case OH_F6:
            if (pressed) {
                tap_code(KC_F6);
            }
        break;
        case OH_F7:
            if (pressed) {
                tap_code(KC_F7);
            }
        break;
        case OH_F8:
            if (pressed) {
                tap_code(KC_F8);
            }
        break;
        case OH_F9:
            if (pressed) {
                tap_code(KC_F9);
            }
        break;
        case OH_F10:
            if (pressed) {
                tap_code(KC_F10);
            }
        break;
        case OH_F11:
            if (pressed) {
                tap_code(KC_F11);
            }
        break;
        case OH_F12:
            if (pressed) {
                tap_code(KC_F12);
            }
        break;
        case OH_CAPS:
            if (pressed) {
                tap_code(KC_CAPS);
            }
        break;
        case OH_TAB:
            if (pressed) {
                tap_code(KC_TAB);
            }
        break;

        case OH_BACKSPACE:
            if (pressed) {
                register_code(KC_BACKSPACE);
            } else {
                unregister_code(KC_BACKSPACE);
            }
        break;

        case OH_PRINTSCREEN:
            if (pressed) {
                tap_code(KC_PRINT_SCREEN);
            }
        break;
        case OH_SCROLL_LOCK:
            if (pressed) {
                tap_code(KC_SCROLL_LOCK);
            }
        break;
        case OH_ENTER:
            if (pressed) {
                tap_code(KC_ENTER);
            }
        break;
        case OH_HOME:
            if (pressed) {
                tap_code(KC_HOME);
            }
        break;
        case OH_END:
            if (pressed) {
                tap_code(KC_END);
            }
        break;


        case OH_SEMICOLON_3_KEY:
            if (pressed) {
                register_code(KC_SEMICOLON);
            } else {
                unregister_code(KC_SEMICOLON);
            }
        break;
        case OH_QUOTE_3_KEY:
            if (pressed) {
                register_code(KC_QUOTE);
            } else {
                unregister_code(KC_QUOTE);
            }
        break;
        case OH_BACKSLASH_3_KEY:
            if (pressed) {
                register_code(KC_BACKSLASH);
            } else {
                unregister_code(KC_BACKSLASH);
            }
        break;
        case OH_COMMA_3_KEY:
            if (pressed) {
                register_code(KC_COMMA);
            } else {
                unregister_code(KC_COMMA);
            }
        break;
        case OH_PERIOD_3_KEY:
            if (pressed) {
                register_code(KC_DOT);
            } else {
                unregister_code(KC_DOT);
            }
        break;
        case OH_SLASH_3_KEY:
            if (pressed) {
                register_code(KC_SLASH);
            } else {
                unregister_code(KC_SLASH);
            }
        break;


        case OH_SEMICOLON:
            if (pressed) {
                register_code(KC_SEMICOLON);
            } else {
                unregister_code(KC_SEMICOLON);
            }
        break;
        case OH_QUOTE:
            if (pressed) {
                register_code(KC_QUOTE);
            } else {
                unregister_code(KC_QUOTE);
            }
        break;
        case OH_BACKSLASH:
            if (pressed) {
                register_code(KC_BACKSLASH);
            } else {
                unregister_code(KC_BACKSLASH);
            }
        break;
        case OH_COMMA:
            if (pressed) {
                register_code(KC_COMMA);
            } else {
                unregister_code(KC_COMMA);
            }
        break;
        case OH_PERIOD:
            if (pressed) {
                register_code(KC_DOT);
            } else {
                unregister_code(KC_DOT);
            }
        break;
        case OH_SLASH:
            if (pressed) {
                register_code(KC_SLASH);
            } else {
                unregister_code(KC_SLASH);
            }
        break;
        case OH_1:
            if (pressed) {
                register_code(KC_1);
            } else {
                unregister_code(KC_1);
            }
        break;
        case OH_2:
            if (pressed) {
                register_code(KC_2);
            } else {
                unregister_code(KC_2);
            }
        break;
        case OH_3:
            if (pressed) {
                register_code(KC_3);
            } else {
                unregister_code(KC_3);
            }
        break;
        case OH_4:
            if (pressed) {
                register_code(KC_4);
            } else {
                unregister_code(KC_4);
            }
        break;
        case OH_5:
            if (pressed) {
                register_code(KC_5);
            } else {
                unregister_code(KC_5);
            }
        break;
        case OH_6:
            if (pressed) {
                register_code(KC_6);
            } else {
                unregister_code(KC_6);
            }
        break;
        case OH_7:
            if (pressed) {
                register_code(KC_7);
            } else {
                unregister_code(KC_7);
            }
        break;
        case OH_8:
            if (pressed) {
                register_code(KC_8);
            } else {
                unregister_code(KC_8);
            }
        break;
        case OH_9:
            if (pressed) {
                register_code(KC_9);
            } else {
                unregister_code(KC_9);
            }
        break;
        case OH_0:
            if (pressed) {
                register_code(KC_0);
            } else {
                unregister_code(KC_0);
            }
        break;
        case OH_MINUS:
            if (pressed) {
                register_code(KC_MINUS);
            } else {
                unregister_code(KC_MINUS);
            }
        break;
        case OH_EQUAL:
            if (pressed) {
                register_code(KC_EQUAL);
            } else {
                unregister_code(KC_EQUAL);
            }
        break;
        case OH_LBRACKET:
            if (pressed) {
                register_code(KC_LEFT_BRACKET);
            } else {
                unregister_code(KC_LEFT_BRACKET);
            }
        break;
        case OH_RBRACKET:
            if (pressed) {
                register_code(KC_RIGHT_BRACKET);
            } else {
                unregister_code(KC_RIGHT_BRACKET);
            }
        break;
        case OH_TICK:
            if (pressed) {
                register_code(KC_GRAVE);
            } else {
                unregister_code(KC_GRAVE);
            }
        break;
    }
}

