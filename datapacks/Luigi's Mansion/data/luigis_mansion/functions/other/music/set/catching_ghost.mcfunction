function #luigis_mansion:other/music/cannot_overwrite/catching_ghost
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/catching_ghost
tag @s remove cancel