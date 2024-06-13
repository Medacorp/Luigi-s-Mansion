function #luigis_mansion:other/music/cannot_overwrite/humming
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/humming
tag @s remove cancel