function #luigis_mansion:other/music/cannot_overwrite/dark_hallway
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/dark_hallway
tag @s remove cancel