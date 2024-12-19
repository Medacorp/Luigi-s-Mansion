function #luigis_mansion:other/music/cannot_overwrite/unportrificationizing
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/unportrificationizing
tag @s remove cancel