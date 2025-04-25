function #e3_demo:other/music/cannot_overwrite/first_key
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function e3_demo:other/music/set/force/first_key
tag @s remove cancel