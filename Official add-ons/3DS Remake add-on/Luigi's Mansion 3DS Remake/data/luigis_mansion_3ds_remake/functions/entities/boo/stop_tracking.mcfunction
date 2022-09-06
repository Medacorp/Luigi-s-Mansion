execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:""}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:""}}]}
execute in minecraft:overworld run function #luigis_mansion_3ds_remake:entities/boo/stop_tracking
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[2]
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] store result score #temp Time if blocks 26 0 0 26 0 0 27 0 0 all
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[2] if score #temp Time matches 1 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[2]
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] store result score #temp Time if blocks 26 0 0 26 0 0 27 0 0 all
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] if score #temp Time matches 1 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] run data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] store result score #temp Time if blocks 26 0 0 26 0 0 27 0 0 all
execute in minecraft:overworld if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] if score #temp Time matches 1 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 26 0 0 minecraft:bedrock
scoreboard players reset #temp Time