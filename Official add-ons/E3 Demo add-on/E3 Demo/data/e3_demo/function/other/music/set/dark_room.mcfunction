function #e3_demo:other/music/cannot_overwrite/dark_room
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function e3_demo:other/music/set/force/dark_room
tag @s remove cancel