summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.gallery_portrait"}',Tags:["furniture","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/gallery_portrait/clockwork_soldiers","minecraft:unbreakable":{},"minecraft:custom_model_data":{strings:["platinum"]},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",portrait_ghost:{namespace:"luigis_mansion",id:"clockwork_soldiers"},model_data:{empty:{components:{"minecraft:custom_model_data":{strings:["none"]}}},bronze:{components:{"minecraft:custom_model_data":{strings:["bronze"]}}},silver:{components:{"minecraft:custom_model_data":{strings:["silver"]}}},gold:{components:{"minecraft:custom_model_data":{strings:["gold"]}}},platinum:{components:{"minecraft:custom_model_data":{strings:["platinum"]}}}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage 3ds_remake:data current_state.selected_portraits{clockwork_soldiers:-1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.empty
execute if data storage 3ds_remake:data current_state.selected_portraits{clockwork_soldiers:0b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.bronze
execute if data storage 3ds_remake:data current_state.selected_portraits{clockwork_soldiers:1b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.silver
execute if data storage 3ds_remake:data current_state.selected_portraits{clockwork_soldiers:2b} as @e[tag=this_entity,limit=1] run data modify entity @s ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.gold
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function 3ds_remake:spawn_furniture/setup/gallery_portrait
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture