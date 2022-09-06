execute if data storage luigis_mansion_3ds_remake:data {obtained_gameboy_horror_part:0b} unless entity @e[type=minecraft:armor_stand,tag=gameboy_horror_part,limit=1] run scoreboard players set #temp Searched 1
execute if score #temp Searched matches 1 run function luigis_mansion_3ds_remake:spawn_entities/item/gameboy_horror_part
execute unless score #temp Searched matches 1 run tag @e[tag=selected] add nothing
scoreboard players reset #temp Searched