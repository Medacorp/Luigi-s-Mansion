data modify entity @e[x=662.5,y=22.5,z=36.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 181
data modify entity @e[x=662.5,y=22.5,z=37.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 180
data modify entity @e[x=662.5,y=23.5,z=36.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 179
data modify entity @e[x=662.5,y=23.5,z=37.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 178
data modify entity @e[x=662.5,y=24.5,z=36.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 177
data modify entity @e[x=662.5,y=24.5,z=37.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 176
scoreboard players set #washroom_2_poster Searched 1
data modify storage 3ds_remake:data current_state.trophy.master.found_posters.washroom_2 set value 1b
execute if data storage 3ds_remake:data current_state.trophy.master.found_posters{washroom_2:1b,projection_room:1b} run function 3ds_remake:room/gallery/clear_task/master/task_9