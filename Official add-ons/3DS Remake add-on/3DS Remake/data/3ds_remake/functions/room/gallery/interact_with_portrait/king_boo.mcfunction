execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.king_boo
execute if score #temp Time matches 3.. if entity @s[scores={FrameChoice=4}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}}
execute if score #temp Time matches 2.. if entity @s[scores={FrameChoice=3}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:2b}}}
execute if score #temp Time matches 1.. if entity @s[scores={FrameChoice=2}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:1b}}}
execute if score #temp Time matches 0.. if entity @s[scores={FrameChoice=1}] run data merge storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:0b}}}

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:0b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=734.5,y=6,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:175}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:1b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=734.5,y=6,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:176}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:2b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=734.5,y=6,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:177}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run data merge entity @e[x=734.5,y=6,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:178}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run fill 735 3 -34 733 10 -23 minecraft:yellow_wool replace minecraft:red_wool
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run fill 735 3 -28 735 3 -29 minecraft:red_wool
execute unless data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}} if score #global_3ds_remake_gallery Selected matches 1 run fill 735 3 -34 733 10 -23 minecraft:red_wool replace minecraft:yellow_wool

execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:0b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=729.5,y=81,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:72}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:1b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=729.5,y=81,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:73}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:2b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=729.5,y=81,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:74}}}
execute if data storage 3ds_remake:data {current_state:{selected_portraits:{king_boo:3b}}} if score #global_3ds_remake_gallery Selected matches 0 run data merge entity @e[x=729.5,y=81,z=-27.5,type=minecraft:item_frame,distance=..0.7,limit=1] {Item:{id:"minecraft:painting",Count:1b,tag:{CustomModelData:74}}}
scoreboard players reset #temp Time
data modify storage luigis_mansion:data macro set value {difficulty:"peaceful"}
execute if score #global_difficulty Selected matches 1 run data modify storage luigis_mansion:data macro.difficulty set value "easy"
execute if score #global_difficulty Selected matches 2 run data modify storage luigis_mansion:data macro.difficulty set value "normal"
execute if score #global_difficulty Selected matches 3 run data modify storage luigis_mansion:data macro.difficulty set value "hard"
execute if entity @s[scores={FrameChoice=5}] run function #3ds_remake:room/gallery/portrait_battle/option/king_boo with storage luigis_mansion:data macro