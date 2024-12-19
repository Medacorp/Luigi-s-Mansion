function #luigis_mansion:other/music/cannot_overwrite/paintings
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/paintings
tag @s remove cancel