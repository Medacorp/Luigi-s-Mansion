function #luigis_beta_mansion:other/music/cannot_overwrite/room
execute if entity @s[tag=!cancel] run function luigis_beta_mansion:other/music/set/force/room
tag @s remove cancel