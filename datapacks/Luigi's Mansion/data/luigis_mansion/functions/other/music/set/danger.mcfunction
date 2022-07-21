function #luigis_mansion:other/music/cannot_overwrite/danger
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/danger
tag @s remove cancel