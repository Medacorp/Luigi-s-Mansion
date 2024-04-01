data modify storage luigis_mansion:data boos set from storage luigis_mansion:data current_state.current_data.boos
data remove storage luigis_mansion:data entity
execute if data storage luigis_mansion:data boos[-1] run function luigis_mansion:entities/hidden_boo/load_in_room/check
data remove storage luigis_mansion:data entity
scoreboard players reset #temp Room
scoreboard players reset #temp2 Room
data remove storage luigis_mansion:data boos