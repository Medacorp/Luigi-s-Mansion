summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.desk_mirror"},Tags:["furniture","immobile","mirror","standing_furniture","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/desk_mirror","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{model_data:{solid:{components:{"minecraft:custom_model_data":{flags:[0b]}}},reflects:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 2
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