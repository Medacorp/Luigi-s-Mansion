function #luigis_beta_mansion:other/music/cannot_overwrite/light
execute if entity @s[tag=!cancel] run function luigis_beta_mansion:other/music/set/force/light
tag @s remove cancel