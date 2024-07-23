execute if block 700 11 84 minecraft:stone_brick_stairs positioned 701 11 85.0 run function luigis_mansion:blocks/search_sound/open/oven
fill 700 11 84 700 11 85 minecraft:stone_brick_slab[type=bottom]
execute unless score #kitchen_dish_washer Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:27,tags:["drop_loot"]}
execute unless score #kitchen_dish_washer Searched matches 1 unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_hat:1b} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{mario_item:[{variant:"hat"}]}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 700 11 85.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 701 11 85.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #kitchen_dish_washer Searched 1
data remove storage luigis_mansion:data furniture