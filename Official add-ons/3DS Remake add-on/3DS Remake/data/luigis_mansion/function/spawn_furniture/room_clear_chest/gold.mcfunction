summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.room_clear_chest"},Tags:["furniture","room_clear_chest","immobile","standing_furniture","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"delayed",interact_animation:{namespace:"3ds_remake",id:"search/chest"},open_animation:{namespace:"luigis_mansion",id:"room_clear_chest"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/room_clear_chest/gold","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[4f]}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 9
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture