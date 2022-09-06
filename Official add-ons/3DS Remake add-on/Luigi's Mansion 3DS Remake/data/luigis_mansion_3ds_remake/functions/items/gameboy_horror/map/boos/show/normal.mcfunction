execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:""}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:""}}]}
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] in minecraft:overworld run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[2]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] in minecraft:overworld run function luigis_mansion_3ds_remake:items/gameboy_horror/map/find_room_for_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] run function luigis_mansion_3ds_remake:items/gameboy_horror/map/display/normal/show_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] in minecraft:overworld run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] in minecraft:overworld run function luigis_mansion_3ds_remake:items/gameboy_horror/map/find_room_for_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] run function luigis_mansion_3ds_remake:items/gameboy_horror/map/display/normal/show_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] in minecraft:overworld run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] in minecraft:overworld run function luigis_mansion_3ds_remake:items/gameboy_horror/map/find_room_for_boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] run function luigis_mansion_3ds_remake:items/gameboy_horror/map/display/normal/show_boo
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 26 0 0 minecraft:bedrock
scoreboard players reset #temp Time