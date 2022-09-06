function #luigis_mansion:other/music/cannot_overwrite/hallway
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/hallway
tag @s remove cancel