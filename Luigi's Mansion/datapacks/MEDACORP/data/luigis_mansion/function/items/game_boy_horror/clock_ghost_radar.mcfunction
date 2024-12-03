data modify storage luigis_mansion:data inventory set from entity @s Inventory
data modify storage luigis_mansion:data temp set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
data remove storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker"
execute if entity @e[tag=radar_detect,limit=1] run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker" set value {tracked:0b,target:{pos:[0,0,0],dimension:"minecraft:overworld"}}
execute if entity @e[tag=radar_detect,limit=1] run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker".target.dimension set from entity @s Dimension
execute if entity @e[tag=radar_detect,limit=1] store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker".target.pos[0] int 1 run data get entity @e[tag=radar_detect,sort=nearest,limit=1] Pos[0]
execute if entity @e[tag=radar_detect,limit=1] store result storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components."minecraft:lodestone_tracker".target.pos[2] int 1 run data get entity @e[tag=radar_detect,sort=nearest,limit=1] Pos[2]
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]
execute if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
data remove storage luigis_mansion:data temp
data remove storage luigis_mansion:data inventory
scoreboard players reset #temp Time