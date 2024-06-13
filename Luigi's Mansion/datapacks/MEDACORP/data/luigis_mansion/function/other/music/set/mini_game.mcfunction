function #luigis_mansion:other/music/cannot_overwrite/mini_game
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/mini_game
tag @s remove cancel