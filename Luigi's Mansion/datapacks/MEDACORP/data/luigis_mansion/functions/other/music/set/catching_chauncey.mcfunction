function #luigis_mansion:other/music/cannot_overwrite/catching_chauncey
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/catching_chauncey
tag @s remove cancel