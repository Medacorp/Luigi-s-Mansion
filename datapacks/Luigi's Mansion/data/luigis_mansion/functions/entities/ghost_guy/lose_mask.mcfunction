tag @s add maskless
function luigis_mansion:entities/ghost_guy/stop_dancing
data modify entity @s ArmorItems[3].tag.CustomModelData set value 4
tag @s remove attack
tag @s add complain
tag @s add stunable
execute rotated ~ 0 if entity @s[tag=!dancing] positioned ^ ^1.3 ^0.4 run function luigis_mansion:spawn_entities/vacuumable_object/ghost_guy_mask
execute rotated ~ 0 if entity @s[tag=dancing] positioned ^ ^1.3 ^0.4 run function luigis_mansion:spawn_entities/vacuumable_object/dancing_ghost_guy_mask
execute rotated ~ 0 positioned ^ ^1.3 ^0.4 run tag @e[tag=ghost_guy_mask,tag=!vacuumable,distance=..0.7,limit=1] add vacuumable