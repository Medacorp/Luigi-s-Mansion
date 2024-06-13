function #luigis_mansion:other/music/cannot_overwrite/king_boo_battle
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/king_boo_battle
tag @s remove cancel