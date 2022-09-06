function #luigis_mansion:other/music/cannot_overwrite/talking_ghost
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/talking_ghost
tag @s remove cancel