function #luigis_mansion:other/music/cannot_overwrite/lets_play
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/lets_play
tag @s remove cancel