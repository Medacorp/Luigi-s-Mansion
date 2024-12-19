function #luigis_mansion:other/music/cannot_overwrite/underground_lab
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/underground_lab
tag @s remove cancel