function #luigis_mansion:other/music/cannot_overwrite/training_option
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/training_option
tag @s remove cancel