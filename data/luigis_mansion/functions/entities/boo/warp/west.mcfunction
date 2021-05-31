playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.8 0.8 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]
tag @s add remove_from_existence
tag @s add warp_west
function #luigis_mansion:entities/boo/warp