function #luigis_mansion:other/music/cannot_overwrite/good_night
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/good_night
tag @s remove cancel