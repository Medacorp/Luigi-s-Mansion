execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.lydia
execute if score #temp Time matches 3.. if entity @s[scores={FrameChoice=4}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{lydia:3b}}}
execute if score #temp Time matches 2.. if entity @s[scores={FrameChoice=3}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{lydia:2b}}}
execute if score #temp Time matches 1.. if entity @s[scores={FrameChoice=2}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{lydia:1b}}}
execute if score #temp Time matches 0.. if entity @s[scores={FrameChoice=1}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{lydia:0b}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:0b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=757.5,y=9,z=-23.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:91}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:1b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=757.5,y=9,z=-23.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:92}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:2b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=757.5,y=9,z=-23.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:93}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=757.5,y=9,z=-23.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:94}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:0b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=765.5,y=79,z=-37.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:9}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:1b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=765.5,y=79,z=-37.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:10}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:2b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=765.5,y=79,z=-37.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:11}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{lydia:3b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=765.5,y=79,z=-37.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:11}}}

scoreboard players reset #temp Time
execute if entity @s[scores={FrameChoice=5}] run function #3ds_remake:room/gallery/portrait_battle/option/lydia