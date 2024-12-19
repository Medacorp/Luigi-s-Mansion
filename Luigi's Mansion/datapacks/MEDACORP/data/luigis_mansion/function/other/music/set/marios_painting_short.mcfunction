function #luigis_mansion:other/music/cannot_overwrite/marios_painting_short
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/marios_painting_short
tag @s remove cancel