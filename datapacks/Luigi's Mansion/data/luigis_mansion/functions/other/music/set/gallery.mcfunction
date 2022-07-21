function #luigis_mansion:other/music/cannot_overwrite/gallery
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/gallery
tag @s remove cancel