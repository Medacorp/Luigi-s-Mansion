function #luigis_mansion:other/music/cannot_overwrite/area_boss_defeated
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/area_boss_defeated
tag @s remove cancel