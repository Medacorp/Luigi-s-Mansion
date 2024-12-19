function #luigis_mansion:other/music/cannot_overwrite/dark_stairwell
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/dark_stairwell
tag @s remove cancel