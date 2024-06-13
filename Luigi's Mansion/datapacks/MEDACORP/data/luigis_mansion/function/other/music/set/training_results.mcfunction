function #luigis_mansion:other/music/cannot_overwrite/training_results
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/training_results
tag @s remove cancel