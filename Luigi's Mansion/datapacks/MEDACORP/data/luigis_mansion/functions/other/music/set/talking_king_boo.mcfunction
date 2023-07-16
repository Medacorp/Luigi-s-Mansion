function #luigis_mansion:other/music/cannot_overwrite/talking_king_boo
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/talking_king_boo
tag @s remove cancel