function #luigis_mansion:other/music/cannot_overwrite/outside
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/outside
tag @s remove cancel