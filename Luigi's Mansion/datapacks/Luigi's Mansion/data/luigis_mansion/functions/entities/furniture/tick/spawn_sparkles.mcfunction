execute positioned ~ ~1.9 ~ run particle minecraft:crit ~ ~ ~ 0.6 0.6 0.6 0 1 normal @a[tag=same_room]
execute if entity @s[scores={MirrorX=-2147483648..}] run function luigis_mansion:entities/furniture/tick/spawn_sparkles/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] run function luigis_mansion:entities/furniture/tick/spawn_sparkles/mirror_z