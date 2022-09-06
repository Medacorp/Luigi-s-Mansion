function #luigis_mansion:other/music/cannot_overwrite/floating_whirlindas
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/floating_whirlindas
tag @s remove cancel