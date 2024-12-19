function #luigis_mansion:other/music/cannot_overwrite/mysterious_power
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/mysterious_power
tag @s remove cancel