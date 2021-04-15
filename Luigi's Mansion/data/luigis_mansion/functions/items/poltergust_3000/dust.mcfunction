execute if block ~ ~ ~ minecraft:air run particle minecraft:dust 0.7 0.7 0.7 0.5 ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if block ~ ~ ~ minecraft:water run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute as @e[tag=vacuumable,distance=..0.7] run function luigis_mansion:items/poltergust_3000/effect_on_entity/dust
execute unless block ~ ~ ~ minecraft:air run function luigis_mansion:items/poltergust_3000/effect_on_block/vacuum