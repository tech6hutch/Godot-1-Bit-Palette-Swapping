This is a shader that works by replacing the two colors you specify with two other colors, along with a Godot project that shows how to use it.

The shader itself is in `global\color_swapper.gdshader`. It's attached to a rectangle that covers the screen and is loaded automatically, and set up to replace pure black and white (#000000 and #FFFFFF) with shades of yellow. The test scene waits two seconds and then changes these to shades of green, to show how to change the palette while the game is running.

This project uses a Game Boy resolution (160x144) scaled up 400%, but none of that matters for the shader. The smiley face was drawn by me :) If you have any questions, feel free to reach out on Discord: `tech_hutch`.
