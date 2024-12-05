execute if entity @s[type=minecraft:marker] run function luigis_mansion:entities/tick with entity @s data.entity
execute if entity @s[type=minecraft:armor_stand] run function luigis_mansion:entities/tick with entity @s ArmorItems[3].components."minecraft:custom_data".entity
scoreboard players reset #temp Move

tag @s remove hide_portrait_ghost

execute if entity @s[tag=debug_entity] run function luigis_mansion:main/debug
execute if entity @s[tag=!debug_entity] if score #debug_entities Selected matches 1.. run function luigis_mansion:main/debug

execute if entity @s[type=minecraft:item] run function luigis_mansion:main/items

execute store result score @s PositionIntX run data get entity @s Pos[0]
execute store result score @s PositionIntY run data get entity @s Pos[1] 100
execute at @s unless block ~ ~ ~ #luigis_mansion:flashlight_path if block ~ ~0.1 ~ #luigis_mansion:flashlight_path run scoreboard players add @s PositionIntY 10
scoreboard players operation @s PositionIntY /= #100 Constants
execute store result score @s PositionIntZ run data get entity @s Pos[2]

execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players operation @s PositionY += @s EntityYOffset