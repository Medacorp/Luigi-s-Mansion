data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],loot:{contents:{luigis_mansion:{key:[{door:"breaker_room",variant:0b,rotation:[0.0f,0.0f]}]}}}}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.loot.name set value "wardrobe_room_room_clear_chest"
execute if data storage luigis_mansion:data current_state.current_data{money_spawned:["wardrobe_room_room_clear_chest"]} run data modify storage luigis_mansion:data furniture.open set value 1b
execute positioned 682 20 -54 rotated -90 0 run function luigis_mansion:spawn_furniture/room_clear_chest/small_blue
setblock 682 20 -54 minecraft:light_gray_stained_glass
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {caught_grimmly:1b}
scoreboard players set #wardrobe_room Wave 101