execute unless score #sitting_room_plant Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:69,tags:["drop_loot"]}
execute unless score #sitting_room_plant Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sitting_room_column_mounted_blue_potted_fern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"sitting_room_column_mounted_blue_potted_fern",contents:{luigis_mansion:{gold_bar:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 737 20 -21 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 738 23 -22 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #sitting_room_plant Searched 1
data remove storage luigis_mansion:data furniture