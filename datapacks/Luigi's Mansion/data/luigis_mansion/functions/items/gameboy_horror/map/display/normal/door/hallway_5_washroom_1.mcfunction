execute store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute unless score #temp Boos matches 5.. run place template luigis_mansion:gameboy_horror_map/door/single_locked 3669 60 24 clockwise_90
execute if score #temp Boos matches 5.. run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3669 60 24 clockwise_90
scoreboard players reset #temp Boos