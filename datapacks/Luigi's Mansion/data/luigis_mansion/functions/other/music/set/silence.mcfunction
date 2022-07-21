function #luigis_mansion:other/music/cannot_overwrite/silence
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/silence
tag @s remove cancel