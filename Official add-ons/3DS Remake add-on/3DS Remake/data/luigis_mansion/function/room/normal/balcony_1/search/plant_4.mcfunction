execute unless score #balcony_1_plant_4 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:6,tags:["drop_loot"]}
execute unless score #balcony_1_plant_4 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["balcony_1_potted_stem"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"balcony_1_potted_stem",contents:{luigis_mansion:{gold_bar:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 674 111 39 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 674 112 39 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_1_plant_4 Searched 1
data remove storage luigis_mansion:data furniture
function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5