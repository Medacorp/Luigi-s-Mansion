execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["rec_room"]} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"rec_room",variant:0b,silent:1b,rotation:[-90.0f,90.0f]}]}}}
execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["rec_room"]} positioned 649 96 18 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
data remove storage luigis_mansion:data furniture
