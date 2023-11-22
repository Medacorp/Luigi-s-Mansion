execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.biff_atlas
execute if score #temp Time matches 3.. if entity @s[scores={FrameChoice=4}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:3b}}}
execute if score #temp Time matches 2.. if entity @s[scores={FrameChoice=3}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:2b}}}
execute if score #temp Time matches 1.. if entity @s[scores={FrameChoice=2}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:1b}}}
execute if score #temp Time matches 0.. if entity @s[scores={FrameChoice=1}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:0b}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:0b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:123}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:1b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:124}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:2b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:125}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:126}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:0b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-25.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:51}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:1b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-25.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:52}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:2b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-25.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:53}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{biff_atlas:3b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=750.5,y=79,z=-25.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:53}}}

scoreboard players reset #temp Time
data modify storage luigis_mansion:data macro set value {difficulty:"peaceful"}
execute if score #global_difficulty Selected matches 1 run data modify storage luigis_mansion:data macro.difficulty set value "easy"
execute if score #global_difficulty Selected matches 2 run data modify storage luigis_mansion:data macro.difficulty set value "normal"
execute if score #global_difficulty Selected matches 3 run data modify storage luigis_mansion:data macro.difficulty set value "hard"
execute if entity @s[scores={FrameChoice=5}] run function #3ds_remake:room/gallery/portrait_battle/option/biff_atlas with storage luigis_mansion:data macro