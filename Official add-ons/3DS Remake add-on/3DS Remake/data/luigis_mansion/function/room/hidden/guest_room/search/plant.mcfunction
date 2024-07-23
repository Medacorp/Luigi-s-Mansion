execute unless score #guest_room_plant Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:70,tags:["drop_loot"]}
execute unless score #guest_room_plant Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["guest_room_column_mounted_blue_potted_fern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"guest_room_column_mounted_blue_potted_fern",contents:{luigis_mansion:{blue_sapphire:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 736 20 75 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 734 20 75 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 737 23 74 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #guest_room_plant Searched 1
data remove storage luigis_mansion:data furniture
function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_5