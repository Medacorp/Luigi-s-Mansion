execute unless score #master_bedroom_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:9,tags:["drop_loot"]}
execute unless score #master_bedroom_table_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_master_dresser"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"master_bedroom_master_dresser",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #master_bedroom_table_2 Searched matches 1 as @e[tag=luigi] if score #master_bedroom_table_2 SearcherID = @s ID run tag @s add searcher
execute unless score #master_bedroom_table_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #master_bedroom_table_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 696.0 111 -24 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 696.0 112.5 -24 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #master_bedroom_table_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=695.5,y=111,z=-23.5,distance=..0.7,tag=ghost,tag=hidden] add spawn