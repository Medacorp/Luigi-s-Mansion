$function luigis_mansion:entities/luigi/move/execute {execute:"rotated ~ 0",teleport:"$(position)"}
execute at @s if block ~0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s if block ~0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute at @s if block ~-0.3 ~ ~0.3 #minecraft:slabs run tag @s add on_slab
execute at @s if block ~-0.3 ~ ~-0.3 #minecraft:slabs run tag @s add on_slab
execute if entity @s[tag=on_slab] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s align y",teleport:"~ ~0.5 ~"}
execute if entity @s[tag=on_slab] at @s align y if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~2 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~2 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
execute if entity @s[tag=!on_slab] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s align y",teleport:"~ ~ ~"}
execute if entity @s[tag=!on_slab] at @s if block ~0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~ ~-0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~0.3 #luigis_mansion:all_ignore if block ~0.3 ~1 ~-0.3 #luigis_mansion:all_ignore if block ~-0.3 ~1 ~-0.3 #luigis_mansion:all_ignore run tag @s add valid_location
tag @s remove on_slab
execute at @s if entity @e[tag=luigi,distance=..0.01,tag=!me,tag=!door_animation,limit=1] run tag @s remove valid_location