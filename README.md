# OH Keyboard

One Handed Keyboard repository.

## Build the firmware

### QMK

First download and build `qmk_firmware` repository. Setup the framework according to its manual. 

Soft link `$HOME/oh-keyboard/oh-keyboard-qmk` directory as `$HOME/qmk_firmware/keyboards/handwired/oh-keyboard-qmk`:

```bash
ln -s $HOME/oh-keyboard/oh-keyboard-qmk $HOME/qmk_firmware/keyboards/handwired/oh-keyboard-qmk
```

Cd to `$HOME/qmk_firmware` directory and compile the project with command:

```bash
qmk compile -kb handwired/oh-keyboard-qmk -km default
```

`$HOME/qmk_firmware/handwired_oh-keyboard-qmk.uf2` file should appear.

Primarily OH Keyboard was builld for Raspberry Pi Pico and that's the default platform. Edit the files according to your needs.

## Upload the uf2 file

Upload the uf2 file to your board. For Raspberry Pi Pico I usually use `picotool`:

```bash
sudo picotool load $HOME/qmk_firmware/handwired_oh-keyboard-qmk.uf2
```

## Build your keyboard

I encourage you to buy the keyboard as a way to support me in developing OH Keyboard and realizing other ideas :)

Anyway, if you wish to build it by yourself, you will find the `.stl` models in `3d_models` directory together with the code for OpenSCAD. You can use it to edit the model according to your needs. 

### Wiring

You will find pin-key mapping in `PIN_KEY_MAPPING.md` file.

## Enjoy your keyboard

You will find the learning resources in the `docs` directory.
It takes some time to learn the combos and get used to One Handed Keyboard.
It is fun though and it lets you eat pizza with the other hand while you type.

# Credits & Acknowledgments

[QMK Firmware](https://qmk.fm/) - The powerhouse firmware driving this keyboard.

[Artsey.io](https://artsey.io/) - This project's logical structure and layout are heavily inspired by and based on the Artsey project.

Original Artsey code by [Greg Leo](https://gregcleo.com/).
