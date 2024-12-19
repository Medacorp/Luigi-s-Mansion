function #luigis_mansion:other/music/cannot_overwrite/training_start
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/training_start
tag @s remove cancel