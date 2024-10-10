summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.mansion_rank_portrait"}',Tags:["furniture","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/mansion_rank_portrait","minecraft:unbreakable":{},"minecraft:custom_model_data":0,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",model_data:{empty:{components:{"minecraft:custom_model_data":0}},a_rank:{components:{"minecraft:custom_model_data":8}},b_rank:{components:{"minecraft:custom_model_data":7}},c_rank:{components:{"minecraft:custom_model_data":6}},d_rank:{components:{"minecraft:custom_model_data":5}},e_rank:{components:{"minecraft:custom_model_data":4}},f_rank:{components:{"minecraft:custom_model_data":3}},g_rank:{components:{"minecraft:custom_model_data":2}},h_rank:{components:{"minecraft:custom_model_data":1}}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{h:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.h_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{g:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.g_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{f:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.f_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{e:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.e_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{d:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.d_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{c:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.c_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{b:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.b_rank
execute if data storage luigis_mansion:data current_state.mansion_ranks_achieved{a:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.a_rank
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