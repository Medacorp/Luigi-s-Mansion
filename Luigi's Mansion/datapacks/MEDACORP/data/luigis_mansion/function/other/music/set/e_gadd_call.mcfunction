function #luigis_mansion:other/music/cannot_overwrite/e_gadd_call
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/e_gadd_call
tag @s remove cancel