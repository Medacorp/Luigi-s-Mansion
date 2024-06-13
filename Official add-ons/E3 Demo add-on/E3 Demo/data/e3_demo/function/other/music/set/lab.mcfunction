function #e3_demo:other/music/cannot_overwrite/lab
execute if entity @s[tag=!cancel] run function e3_demo:other/music/set/force/lab
tag @s remove cancel