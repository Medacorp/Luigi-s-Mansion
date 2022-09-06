function #luigis_mansion:other/music/cannot_overwrite/training_result
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/training_result
tag @s remove cancel