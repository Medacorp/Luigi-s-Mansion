execute unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore if block ~ ~-0.6 ~ #minecraft:slabs[type=bottom] at @s run teleport @s ~ ~-0.02 ~
execute if block ~ ~-0.1 ~ #luigis_mansion:items_ignore at @s run teleport @s ~ ~-0.02 ~
scoreboard players remove #temp Move 1
execute unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore unless block ~ ~-0.6 ~ #minecraft:slabs[type=bottom] run function luigis_mansion:entities/item/physics/step/bounce
execute unless block ~ ~-0.1 ~ #luigis_mansion:items_ignore unless block ~ ~-0.6 ~ #minecraft:slabs[type=bottom] run tag @s add floor_bounce
execute if score #temp Move matches 1.. if entity @s[scores={Move=..-1}] positioned ~ ~-0.02 ~ run function luigis_mansion:entities/item/physics/step/fall
execute if score #temp Move matches 1.. if entity @s[scores={Move=1..}] positioned ~ ~0.02 ~ run function luigis_mansion:entities/item/physics/step/fly