function #luigis_mansion:other/music/cannot_overwrite/exterior
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/exterior
tag @s remove cancel