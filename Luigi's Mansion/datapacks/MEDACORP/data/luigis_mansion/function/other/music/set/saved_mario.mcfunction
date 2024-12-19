function #luigis_mansion:other/music/cannot_overwrite/saved_mario
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/saved_mario
tag @s remove cancel