execute positioned ^ ^ ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 30 normal @a[tag=same_room]
execute positioned ^ ^0.5 ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 30 normal @a[tag=same_room]
execute positioned ^ ^-0.5 ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 30 normal @a[tag=same_room]
execute positioned ^0.5 ^ ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 30 normal @a[tag=same_room]
execute positioned ^-0.5 ^ ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 30 normal @a[tag=same_room]
execute unless entity @s[distance=..0.7] if score #temp Steps matches ..14 positioned ^ ^ ^0.5 run function luigis_beta_mansion:items/poltergust_500/break_free_step