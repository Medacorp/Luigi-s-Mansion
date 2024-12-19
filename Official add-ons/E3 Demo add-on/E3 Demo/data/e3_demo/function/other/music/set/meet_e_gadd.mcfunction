function #e3_demo:other/music/cannot_overwrite/meet_e_gadd
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function e3_demo:other/music/set/force/meet_e_gadd
tag @s remove cancel