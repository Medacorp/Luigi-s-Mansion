function #luigis_mansion:other/music/cannot_overwrite/ball_room
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/ball_room
tag @s remove cancel