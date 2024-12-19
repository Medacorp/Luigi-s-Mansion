function #e3_demo:other/music/cannot_overwrite/underground_lab
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function e3_demo:other/music/set/force/underground_lab
tag @s remove cancel