function #luigis_mansion:other/music/cannot_overwrite/opening
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/opening
tag @s remove cancel