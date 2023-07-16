function #luigis_mansion:other/music/cannot_overwrite/king_boo_warp
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/king_boo_warp
tag @s remove cancel