function #luigis_mansion:other/music/cannot_overwrite/dark_room
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/dark_room
tag @s remove cancel