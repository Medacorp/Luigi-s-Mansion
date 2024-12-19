function #luigis_mansion:other/music/cannot_overwrite/catching_bogmire
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/catching_bogmire
tag @s remove cancel