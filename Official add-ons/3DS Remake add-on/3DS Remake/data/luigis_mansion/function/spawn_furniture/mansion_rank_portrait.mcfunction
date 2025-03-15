summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.mansion_rank_portrait"},Tags:["furniture","immobile","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/mansion_rank_portrait","minecraft:custom_model_data":{strings:["none"]},"minecraft:custom_data":{model_data:{empty:{components:{"minecraft:custom_model_data":{strings:["none"]}}},s_rank:{components:{"minecraft:custom_model_data":{strings:["s"]}}},a_rank:{components:{"minecraft:custom_model_data":{strings:["a"]}}},b_rank:{components:{"minecraft:custom_model_data":{strings:["b"]}}},c_rank:{components:{"minecraft:custom_model_data":{strings:["c"]}}},d_rank:{components:{"minecraft:custom_model_data":{strings:["d"]}}},e_rank:{components:{"minecraft:custom_model_data":{strings:["e"]}}},f_rank:{components:{"minecraft:custom_model_data":{strings:["f"]}}},g_rank:{components:{"minecraft:custom_model_data":{strings:["g"]}}},h_rank:{components:{"minecraft:custom_model_data":{strings:["h"]}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:0b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.h_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:1b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.g_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:2b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.f_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:3b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.e_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:4b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.d_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:5b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.c_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:6b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.b_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:7b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.a_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:8b} as @e[tag=this_entity,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.s_rank
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture