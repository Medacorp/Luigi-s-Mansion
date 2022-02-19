execute if entity @s[tag=!valid_location] facing entity @a[tag=me,limit=1] feet rotated ~ 0 run teleport @s ^0.1 ^ ^
execute at @s[tag=!valid_location] if block ~0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y run teleport @s ~ ~0.5 ~
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s align y run teleport @s ~ ~ ~
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s if block ~0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
tag @s remove on_slab
execute if entity @s[tag=!valid_location] facing entity @a[tag=me,limit=1] feet rotated ~ 0 run teleport @s ^-0.1 ^ ^
execute at @s[tag=!valid_location] if block ~0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y run teleport @s ~ ~0.5 ~
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s align y run teleport @s ~ ~ ~
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s if block ~0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
tag @s remove on_slab
execute if entity @s[tag=!valid_location] facing entity @a[tag=me,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-0.1
execute at @s[tag=!valid_location] if block ~0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s[tag=!valid_location] if block ~-0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y run teleport @s ~ ~0.5 ~
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s align y run teleport @s ~ ~ ~
execute if entity @s[tag=!valid_location,tag=on_slab] at @s align y if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
execute if entity @s[tag=!valid_location,tag=!on_slab] at @s if block ~0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
tag @s remove on_slab
teleport @s[tag=!valid_location] ~ ~ ~
tag @s remove valid_location