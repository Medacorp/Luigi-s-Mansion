execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.madame_clairvoya
execute if score #temp Time matches 3.. if entity @s[scores={FrameChoice=4}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:3b}}}
execute if score #temp Time matches 2.. if entity @s[scores={FrameChoice=3}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:2b}}}
execute if score #temp Time matches 1.. if entity @s[scores={FrameChoice=2}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:1b}}}
execute if score #temp Time matches 0.. if entity @s[scores={FrameChoice=1}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:0b}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:0b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-32.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:143}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:1b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-32.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:144}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:2b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-32.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:145}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=749.5,y=14,z=-32.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:146}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:0b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=758.5,y=79,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:24}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:1b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=758.5,y=79,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:25}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:2b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=758.5,y=79,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:26}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{madame_clairvoya:3b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=758.5,y=79,z=-21.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:26}}}

scoreboard players reset #temp Time
data modify storage luigis_mansion:data macro set value {difficulty:"peaceful"}
execute if score #global_difficulty Selected matches 1 run data modify storage luigis_mansion:data macro.difficulty set value "easy"
execute if score #global_difficulty Selected matches 2 run data modify storage luigis_mansion:data macro.difficulty set value "normal"
execute if score #global_difficulty Selected matches 3 run data modify storage luigis_mansion:data macro.difficulty set value "hard"
execute if entity @s[scores={FrameChoice=5}] run function #3ds_remake:room/gallery/portrait_battle/option/madame_clairvoya with storage luigis_mansion:data macro