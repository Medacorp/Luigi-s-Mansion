execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] run data modify storage luigis_mansion:data macro set from storage luigis_mansion:data current_state.current_data.tracking_boos[2]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] run function 3ds_remake:selection_menu/game_boy_horror/map/find_room_for_boo with storage luigis_mansion:data macro
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] if score #temp Time matches 1.. run function 3ds_remake:selection_menu/game_boy_horror/map/display/hidden/show_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] unless score #temp Time matches 1.. run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[2]
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] run data modify storage luigis_mansion:data macro set from storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] run function 3ds_remake:selection_menu/game_boy_horror/map/find_room_for_boo with storage luigis_mansion:data macro
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] if score #temp Time matches 1.. run function 3ds_remake:selection_menu/game_boy_horror/map/display/hidden/show_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] unless score #temp Time matches 1.. run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[1]
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] run data modify storage luigis_mansion:data macro set from storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] run function 3ds_remake:selection_menu/game_boy_horror/map/find_room_for_boo with storage luigis_mansion:data macro
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] if score #temp Time matches 1.. run function 3ds_remake:selection_menu/game_boy_horror/map/display/hidden/show_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] unless score #temp Time matches 1.. run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[0]
scoreboard players reset #temp Time