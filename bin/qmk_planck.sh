#!/bin/bash

echo "/* USER ADDED AFTER ORYX BOILERPLATE BEGIN */\n#define TAPPING_FORCE_HOLD_PER_KEY\n/* USER ADDED AFTER ORYX BOILERPLATE END */" >> ~/qmk_firmware/keyboards/planck/keymaps/lexjacobs_miryoku/config.h


echo "// BEGIN ADD-ON CODE AFTER ORYX PRODUCED BOILERPLATE\n// force layer switch hold on all thumb LayerTap keys only\nbool get_tapping_force_hold(uint16_t keycode, keyrecord_t *record) {\nswitch (keycode) {\ncase LT(5,KC_ESCAPE):\nreturn true;\ncase LT(6,KC_BSPACE):\nreturn true;\ncase LT(7,KC_TAB):\nreturn true;\ncase LT(8,KC_ENTER):\nreturn true;\ncase LT(9,KC_SPACE):\nreturn true;\ncase LT(10,KC_DELETE):\nreturn true;\ndefault:\nreturn false;\n}\n}\n// END ADD-ON CODE AFTER ORYX PRODUCED BOILERPLATE" >> ~/qmk_firmware/keyboards/planck/keymaps/lexjacobs_miryoku/keymap.c
