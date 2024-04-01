summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.mansion_rank_portrait"}',Tags:["furniture","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:-25,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",model_data:{empty:{tag:{CustomModelData:-25}},s_rank:{tag:{CustomModelData:-24}},a_rank:{tag:{CustomModelData:-23}},b_rank:{tag:{CustomModelData:-22}},c_rank:{tag:{CustomModelData:-21}},d_rank:{tag:{CustomModelData:-20}},e_rank:{tag:{CustomModelData:-19}},f_rank:{tag:{CustomModelData:-18}},g_rank:{tag:{CustomModelData:-17}},h_rank:{tag:{CustomModelData:-16}}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:0b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.h_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.g_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:2b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.f_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:3b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.e_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:4b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.d_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:5b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.c_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:6b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.b_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:7b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.a_rank
execute if data storage 3ds_remake:data current_state.selected_portraits{mansion_rank:8b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].tag.luigis_mansion.model_data.s_rank
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
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