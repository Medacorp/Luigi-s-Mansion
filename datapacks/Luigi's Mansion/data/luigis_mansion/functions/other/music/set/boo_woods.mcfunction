function #luigis_mansion:other/music/cannot_overwrite/boo_woods
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/boo_woods
tag @s remove cancel