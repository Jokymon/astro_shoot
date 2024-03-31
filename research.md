## Background scrolling

Workable information from
https://forum.godotengine.org/t/how-do-i-make-a-texture-repeat/40691/2

Parts of the information, including the scrolling script:
https://asmaloney.com/2021/02/code/vertical-scrolling-parallax-backgrounds-in-godot/

## Player control

Moving the space ship using the mouse
https://www.reddit.com/r/godot/comments/11k4e0o/moving_sprites_with_mouse_pointer/

## Game organisation

General structure copied together from information on
https://gamedevartisan.com/tutorials/godot-fundamentals/ui-and-signals
https://gamedevartisan.com/tutorials/godot-fundamentals/menus-and-scene-transitions

Directly accessing a node in a hierarchy by a scene unique name:
https://docs.godotengine.org/en/3.6/tutorials/scripting/scene_unique_nodes.html

Settings singleton from information in
https://docs.godotengine.org/en/stable/tutorials/scripting/singletons_autoload.html

Use of getter/setter properties for the settings
https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html

## Bullet firing

General mechanics and principles
https://kidscancode.org/godot_recipes/4.x/2d/2d_shooting/index.html

Additional inspiration and some modernisation
https://docs.godotengine.org/en/stable/getting_started/first_2d_game/05.the_main_game_scene.html

## Alien movement

The alien could be made a child of a `PathFollow2D` and then `progress_ratio` could
be simply updated according to the alien movement speed. The problem with this
approach is that the alien then is also rotated, even when the `rotates` property
of the `PathFollow2D` is `false`. The alien is still rotated at least once at
the very beginning.
I solved this by just attaching a `Marker2D` to the `PathFollow2D` and then
just continuously updating the alien ships position with the `global_position`
of the marker after `progress_ratio` is updated.

## Playing sounds

Implementation of the audio player pool according to
https://kidscancode.org/godot_recipes/3.x/audio/audio_manager/
