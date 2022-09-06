function #luigis_mansion:other/music/cannot_overwrite/credits
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/credits
tag @s remove cancel