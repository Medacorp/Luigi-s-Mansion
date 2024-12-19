function #luigis_mansion:other/music/cannot_overwrite/ghost_portrificationizer_room
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/ghost_portrificationizer_room
tag @s remove cancel