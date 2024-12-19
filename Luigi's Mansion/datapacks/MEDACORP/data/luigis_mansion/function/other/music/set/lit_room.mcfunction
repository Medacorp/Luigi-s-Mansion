function #luigis_mansion:other/music/cannot_overwrite/light
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/light
tag @s remove cancel