execute unless score #study_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:8,tags:["drop_loot"]}
execute unless score #study_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_mushroom_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"study_mushroom_chandelier",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #study_lamp_2 Searched matches 1 as @e[tag=luigi] if score #study_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #study_lamp_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #study_lamp_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 709.0 25 -37.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 709.0 24 -37.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #study_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture