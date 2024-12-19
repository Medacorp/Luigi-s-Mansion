function #luigis_mansion:other/music/cannot_overwrite/collect_marios_painting
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/collect_marios_painting
tag @s remove cancel