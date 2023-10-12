data modify storage luigis_mansion:data furniture set value {searchable:["time"],cannot_search_when_open:1b,use_medium_shake:1b,sound:{namespace:"luigis_mansion",id:"chest"},no_dust:1b}
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.bed_room_1.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bed_room_1_room_clear_chest"]} run function e3_demo:room/original/room_clear_chest_coins
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bed_room_1_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "bed_room_1_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["bed_room_1_room_clear_chest"]} run data modify storage luigis_mansion:data furniture merge value {searched:1b,no_search_animation:1b}
execute if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:1b} positioned 691 111 47 rotated -90 0 run function e3_demo:spawn_furniture/room_clear_chest
execute if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:1b} run setblock 691 111 47 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
