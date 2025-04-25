data merge entity @e[x=662.5,y=22.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":334}}}
data merge entity @e[x=662.5,y=22.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":333}}}
data merge entity @e[x=662.5,y=23.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":332}}}
data merge entity @e[x=662.5,y=23.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":331}}}
data merge entity @e[x=662.5,y=24.5,z=-20.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":330}}}
data merge entity @e[x=662.5,y=24.5,z=-21.5,distance=..0.5,type=minecraft:item_frame,limit=1] {Tags:["static","no_ai","freeze_animation"],Item:{components:{"minecraft:map_id":329}}}
scoreboard players set #washroom_2_poster Searched 1
data modify storage 3ds_remake:data current_state.trophy.master.found_posters.washroom_2 set value 1b
execute if data storage 3ds_remake:data current_state.trophy.master.found_posters{washroom_2:1b,projection_room:1b} run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_9