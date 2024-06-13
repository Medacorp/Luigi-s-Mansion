function #luigis_mansion:other/music/cannot_overwrite/chauncey_battle
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/chauncey_battle
tag @s remove cancel