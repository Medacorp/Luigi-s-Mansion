data modify storage luigis_mansion:data furniture set value {room:5,searchable:["interact"],shake_animation:["interact"],no_dust:1b,must_face:1b,cannot_search_when_open:1b,use_medium_shake:1b,sound:{namespace:"luigis_mansion",id:"chest"},loot:{contents:{luigis_mansion:{key:[{door:"breaker_room",rotation:[-180.0f,0.0f]}]}}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "wardrobe_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture merge value {searched:1b,no_search_animation:1b,no_spawn_sound:1b}
execute positioned 682 20 69 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
setblock 682 20 69 minecraft:light_gray_stained_glass
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {caught_grimmly:1b}
scoreboard players set #wardrobe_room Wave 101