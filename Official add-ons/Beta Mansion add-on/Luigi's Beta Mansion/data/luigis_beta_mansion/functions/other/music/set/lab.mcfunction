function #luigis_beta_mansion:other/music/cannot_overwrite/lab
execute if entity @s[tag=!cancel] run function luigis_beta_mansion:other/music/set/force/lab
tag @s remove cancel