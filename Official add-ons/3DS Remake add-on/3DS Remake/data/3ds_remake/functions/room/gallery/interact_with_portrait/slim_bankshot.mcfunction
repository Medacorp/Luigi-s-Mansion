execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.slim_bankshot
execute if score #temp Time matches 3.. if entity @s[scores={FrameChoice=4}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:3b}}}
execute if score #temp Time matches 2.. if entity @s[scores={FrameChoice=3}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:2b}}}
execute if score #temp Time matches 1.. if entity @s[scores={FrameChoice=2}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:1b}}}
execute if score #temp Time matches 0.. if entity @s[scores={FrameChoice=1}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:0b}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:0b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:135}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:1b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:136}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:2b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:137}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:138}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:0b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-30.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:54}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:1b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-30.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:55}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:2b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-30.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:56}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{slim_bankshot:3b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-30.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:56}}}

scoreboard players reset #temp Time
data modify storage luigis_mansion:data macro set value {difficulty:"peaceful"}
execute if score #global_difficulty Selected matches 1 run data modify storage luigis_mansion:data macro.difficulty set value "easy"
execute if score #global_difficulty Selected matches 2 run data modify storage luigis_mansion:data macro.difficulty set value "normal"
execute if score #global_difficulty Selected matches 3 run data modify storage luigis_mansion:data macro.difficulty set value "hard"
execute if entity @s[scores={FrameChoice=5}] run function #3ds_remake:room/gallery/portrait_battle/option/slim_bankshot with storage luigis_mansion:data macro