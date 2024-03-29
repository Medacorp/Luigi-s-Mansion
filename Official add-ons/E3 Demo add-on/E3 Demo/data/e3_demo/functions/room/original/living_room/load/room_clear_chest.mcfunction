data modify storage luigis_mansion:data furniture set value {room:3,searchable:["time"],cannot_search_when_open:1b,use_medium_shake:1b,sound:{namespace:"luigis_mansion",id:"chest"},no_dust:1b}
execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_2"]} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{key:[{door:"hallway_2",variant:0b,rotation:[-90.0f,0.0f]}]}}}
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["living_room_room_clear_chest"]} run function e3_demo:room/original/room_clear_chest_coins
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["living_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "living_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["living_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture merge value {searched:1b,no_search_animation:1b,no_spawn_sound:1b}
execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} positioned 718 20 27 rotated -90 0 run function e3_demo:spawn_furniture/room_clear_chest
execute if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:1b} run setblock 718 20 27 minecraft:light_gray_stained_glass
data remove storage luigis_mansion:data furniture
