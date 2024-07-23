execute unless score #courtyard_plant_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:30,tags:["drop_loot"]}
execute unless score #courtyard_plant_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_stone_bowl_potted_fern_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"courtyard_stone_bowl_potted_fern_2",contents:{luigis_mansion:{gold_bar:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 650 102 0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 650 104 0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #courtyard_plant_2 Searched 1
data remove storage luigis_mansion:data furniture