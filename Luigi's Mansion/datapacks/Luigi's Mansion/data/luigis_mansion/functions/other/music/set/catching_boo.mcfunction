function #luigis_mansion:other/music/cannot_overwrite/catching_boo
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/catching_boo
tag @s remove cancel