execute unless score #rec_room_threadmill Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:32,tags:["drop_loot"]}
execute unless score #rec_room_threadmill Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_8"]} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"hallway_8",rotation:[-180.0f,0.0f]}]}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 643 12 -32 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 633 12 -32 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 643 12 -33 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #rec_room_threadmill Searched 1
data remove storage luigis_mansion:data furniture