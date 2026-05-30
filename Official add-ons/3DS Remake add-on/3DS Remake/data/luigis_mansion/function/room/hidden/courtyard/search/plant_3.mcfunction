execute unless score #courtyard_plant_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:30,tags:["drop_loot"]}
execute unless score #courtyard_plant_3 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_stone_bowl_potted_fern_3"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"courtyard_stone_bowl_potted_fern_3"}
execute unless score #courtyard_plant_3 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_stone_bowl_potted_fern_3"]} run data modify storage luigis_mansion:data furniture.loot.contents set from storage luigis_mansion:data current_state.current_data.loot_collections.furniture.green_emerald
execute unless data storage luigis_mansion:data furniture.loot positioned 646 102 8 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 646 104 8 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #courtyard_plant_3 Searched 1
data remove storage luigis_mansion:data furniture
function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5