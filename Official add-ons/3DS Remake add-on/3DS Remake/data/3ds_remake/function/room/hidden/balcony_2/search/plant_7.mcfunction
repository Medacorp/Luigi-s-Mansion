execute unless score #balcony_2_plant_7 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:53,tags:["drop_loot"]}
execute unless score #balcony_2_plant_7 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["balcony_2_potted_dying_blue_flower_3"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"balcony_2_potted_dying_blue_flower_3",contents:{luigis_mansion:{green_emerald:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 655 120 13 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 655 121 13 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_2_plant_7 Searched 1
data remove storage luigis_mansion:data furniture
function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5