function #luigis_mansion:other/music/cannot_overwrite/piano
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/piano
tag @s remove cancel