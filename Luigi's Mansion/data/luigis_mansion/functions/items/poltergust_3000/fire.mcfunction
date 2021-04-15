particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute as @e[distance=..0.7] run function luigis_mansion:items/poltergust_3000/effect_on_entity/fire
execute unless block ~ ~ ~ minecraft:air run function luigis_mansion:items/poltergust_3000/effect_on_block/fire