function #luigis_mansion:other/music/cannot_overwrite/training
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/training
tag @s remove cancel