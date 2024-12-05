execute unless score #kitchen_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:27,tags:["drop_loot"]}
execute unless score #kitchen_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_cone_lamp_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"kitchen_cone_lamp_2",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #kitchen_lamp_2 Searched matches 1 as @e[tag=luigi] if score #kitchen_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #kitchen_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #kitchen_lamp_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 702 16 79 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 702 15 79 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #kitchen_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture