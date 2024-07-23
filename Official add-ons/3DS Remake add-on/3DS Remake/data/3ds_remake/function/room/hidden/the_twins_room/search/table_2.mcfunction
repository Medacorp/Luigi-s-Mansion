execute unless score #the_twins_room_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:49,tags:["drop_loot"]}
execute unless score #the_twins_room_table_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_letter:1b} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{mario_item:[{variant:"letter"}]}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 747.0 20 48.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 747.0 21.5 48.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_twins_room_table_2 Searched 1
data remove storage luigis_mansion:data furniture