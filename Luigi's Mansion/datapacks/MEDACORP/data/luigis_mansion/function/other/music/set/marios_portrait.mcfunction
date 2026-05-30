function #luigis_mansion:other/music/cannot_overwrite/marios_portrait
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/marios_portrait
tag @s remove cancel