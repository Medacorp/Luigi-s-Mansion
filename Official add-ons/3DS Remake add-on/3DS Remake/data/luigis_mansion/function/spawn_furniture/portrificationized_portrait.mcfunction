$execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){portrificationized:1b} run return 0
data modify storage luigis_mansion:data furniture set value {room:-3,tags:["this_portrait","portrificationized_portrait","move_with_area","applied_dialog_effects"],animation:{namespace:"luigis_mansion",id:"fall",frozen:1b},gallery_portrait:{x:0,y:0,z:0,x_rotation:0,y_rotation:0}}
$execute if data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] run data modify storage luigis_mansion:data furniture.tags append value "suspended"
$execute unless data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] run data modify storage luigis_mansion:data furniture.tags append value "done_animating"
$execute positioned ~ ~$(up) ~$(left) rotated -90 0 run function $(namespace):spawn_furniture/gallery_portrait/$(id)
data modify entity @e[tag=this_portrait,limit=1] data.entity set value {namespace:"luigis_mansion",id:"portrificationized_portrait"}
$execute if data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] as @e[tag=this_portrait,limit=1] at @s run teleport @s ~ ~10 ~
$execute if data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] unless score #first_area Time matches 1 run scoreboard players operation #first_area Time = #area Time
execute if data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] run summon minecraft:text_display ~1 ~ ~4.5 {Tags:["portrificationized_portrait_text","move_with_area","this_area"],text:{type:"translatable",translate:"$(namespace):entity.$(id)"},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
scoreboard players operation @e[tag=this_area,limit=1] Dialog = #area Time
scoreboard players set @e[tag=this_area,limit=1] Room -3
tag @e[tag=this_area,limit=1] remove this_area
$execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:-1b} as @e[tag=this_portrait,limit=1] run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "portrificationizing_bronze"
$execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:0b} as @e[tag=this_portrait,limit=1] run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "portrificationizing_bronze"
$execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:1b} as @e[tag=this_portrait,limit=1] run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "portrificationizing_silver"
$execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:2b} as @e[tag=this_portrait,limit=1] run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "portrificationizing_gold"
$execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:3b} as @e[tag=this_portrait,limit=1] run data modify entity @s equipment.head.components."minecraft:custom_model_data".strings[0] set value "portrificationizing_platinum"
scoreboard players operation @e[tag=this_portrait,limit=1] Dialog = #area Time
tag @e[tag=this_portrait,limit=1] remove furniture
tag @e[tag=this_portrait,limit=1] remove this_portrait
scoreboard players add #spawned_portraits Time 1
$execute if data storage luigis_mansion:data dialogs[0].portraits.new[{namespace:"$(namespace)",id:"$(id)"}] run scoreboard players add #spawned_portrait Time 1