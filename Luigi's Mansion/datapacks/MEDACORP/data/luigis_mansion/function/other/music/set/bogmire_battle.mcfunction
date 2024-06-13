function #luigis_mansion:other/music/cannot_overwrite/bogmire_battle
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/bogmire_battle
tag @s remove cancel