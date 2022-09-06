data modify entity @e[x=662.5,y=22.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 334
data modify entity @e[x=662.5,y=22.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 333
data modify entity @e[x=662.5,y=23.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 332
data modify entity @e[x=662.5,y=23.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 331
data modify entity @e[x=662.5,y=24.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 330
data modify entity @e[x=662.5,y=24.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] Item.tag.map set value 329
scoreboard players set #washroom_2_poster Searched 1
data modify storage luigis_mansion_3ds_remake:data current_state.trophy.master.found_posters.washroom_2 set value 1b
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.master.found_posters{washroom_2:1b,projection_room:1b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/master/task_9