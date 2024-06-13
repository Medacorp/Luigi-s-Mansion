function luigis_mansion:entities/ghost/hidden/ai
data remove entity @s data.animation
execute at @s[tag=appear,tag=!partner] run function luigis_mansion:entities/dancing_ghost_guy/ai/spawn_partner
tag @s[tag=no_appear] remove appear