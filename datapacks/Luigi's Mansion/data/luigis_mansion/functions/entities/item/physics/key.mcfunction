execute if entity @s[tag=key,tag=!display] run function luigis_mansion:entities/item/key_physics
execute at @s[tag=key,tag=!display] run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 1 1 normal @a[tag=same_room]
execute at @s[tag=key,tag=display] run function luigis_mansion:animations/money/rotate