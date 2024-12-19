function #luigis_mansion:other/music/cannot_overwrite/toad
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/toad
tag @s remove cancel