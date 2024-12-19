function #luigis_mansion:other/music/cannot_overwrite/moving_wall
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/moving_wall
tag @s remove cancel