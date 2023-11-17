execute unless block ~ ~0.6 ~ #luigis_mansion:items_ignore if block ~ ~1.1 ~ #minecraft:slabs[type=top] at @s run teleport @s ~ ~0.02 ~
execute if block ~ ~0.6 ~ #luigis_mansion:items_ignore at @s run teleport @s ~ ~0.02 ~
scoreboard players remove #temp Move 1
execute unless block ~ ~0.6 ~ #luigis_mansion:items_ignore unless block ~ ~1.1 ~ #minecraft:slabs[type=top] run function luigis_mansion:entities/item/physics_step/bounce
execute if score #temp Move matches 1.. if entity @s[scores={Move=..-1}] positioned ~ ~-0.02 ~ run function luigis_mansion:entities/item/physics_step/fall
execute if score #temp Move matches 1.. if entity @s[scores={Move=1..}] positioned ~ ~0.02 ~ run function luigis_mansion:entities/item/physics_step/fly