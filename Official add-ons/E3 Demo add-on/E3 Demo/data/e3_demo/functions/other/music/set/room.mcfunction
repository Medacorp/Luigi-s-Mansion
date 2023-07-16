function #e3_demo:other/music/cannot_overwrite/room
execute if entity @s[tag=!cancel] run function e3_demo:other/music/set/force/room
tag @s remove cancel