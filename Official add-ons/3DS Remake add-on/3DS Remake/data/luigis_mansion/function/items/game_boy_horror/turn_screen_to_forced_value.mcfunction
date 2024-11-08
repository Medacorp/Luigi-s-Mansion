data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data temp set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[1] set value "none"
execute if score @s ForceScreen matches 1..7 run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value 0b
execute if score @s ForceScreen matches 1..7 run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[1] set value "call"
execute if score @s ForceScreen matches 1..7 store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s ForceScreen 1
execute if score @s ForceScreen matches 8.. run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value 1b
execute if score @s ForceScreen matches 9 run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value "scanning"
execute if score @s ForceScreen matches 10 run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".flags[0] set value "boot_program"
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
execute if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
data remove storage luigis_mansion:data temp
data remove storage luigis_mansion:data inventory
scoreboard players reset #temp Time