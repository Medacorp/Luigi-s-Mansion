function #luigis_mansion:other/music/cannot_overwrite/portrificationizing
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/portrificationizing
tag @s remove cancel