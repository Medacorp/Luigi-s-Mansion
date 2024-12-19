function #luigis_mansion:other/music/cannot_overwrite/secret_revealed
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/secret_revealed
tag @s remove cancel