execute if entity @s[type=minecraft:marker] run function luigis_mansion:entities/tick with entity @s data.entity
execute if entity @s[type=minecraft:armor_stand] run function luigis_mansion:entities/tick with entity @s ArmorItems[3].components."minecraft:custom_data".entity
scoreboard players reset #temp Move

execute if entity @s[tag=debug_entity] run function luigis_mansion:main/debug
execute if entity @s[tag=!debug_entity] if score #debug_entities Selected matches 1.. run function luigis_mansion:main/debug

execute if entity @s[type=minecraft:item] run function luigis_mansion:main/items

# Fix multiple lightning loading in
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[type=minecraft:lightning_bolt,distance=0.1..]
execute if entity @s[type=minecraft:lightning_bolt] run kill @e[tag=lightning]

execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players operation @s PositionY += @s EntityYOffset