$data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[0] set value "$(value)"
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:custom_model_data".strings[0]
execute unless data storage luigis_mansion:data {temp:"off"} unless data storage luigis_mansion:data {temp:"on"} run scoreboard players add @s GBHRadar 1
execute if data storage luigis_mansion:data {temp:"on_top"} run scoreboard players add @s GBHRadar 15
execute if data storage luigis_mansion:data {temp:"here"} run scoreboard players add @s GBHRadar 12
execute if data storage luigis_mansion:data {temp:"close"} run scoreboard players add @s GBHRadar 9
execute if data storage luigis_mansion:data {temp:"nearby"} run scoreboard players add @s GBHRadar 6
execute if data storage luigis_mansion:data {temp:"approaching"} run scoreboard players add @s GBHRadar 3
data remove storage luigis_mansion:data temp
scoreboard players set @s ForceRadar 1