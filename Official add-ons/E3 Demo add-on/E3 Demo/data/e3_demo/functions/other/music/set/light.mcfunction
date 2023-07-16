function #e3_demo:other/music/cannot_overwrite/light
execute if entity @s[tag=!cancel] run function e3_demo:other/music/set/force/light
tag @s remove cancel