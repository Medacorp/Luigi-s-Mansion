function #luigis_mansion:other/music/cannot_overwrite/portraits
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/portraits
tag @s remove cancel