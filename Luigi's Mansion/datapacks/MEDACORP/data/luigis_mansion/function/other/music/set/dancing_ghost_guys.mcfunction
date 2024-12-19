function #luigis_mansion:other/music/cannot_overwrite/dancing_ghost_guys
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/dancing_ghost_guys
tag @s remove cancel