function #luigis_mansion:other/music/cannot_overwrite/meet_e_gadd
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/meet_e_gadd
tag @s remove cancel