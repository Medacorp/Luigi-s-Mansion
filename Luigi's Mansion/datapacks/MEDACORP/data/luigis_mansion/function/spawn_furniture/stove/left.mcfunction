summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.stove"},Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"stove"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/stove","minecraft:custom_model_data":{flags:[1b],floats:[0f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[6f]}}}}}}}},Tags:["furniture","immobile","standing_furniture","can_be_fire_elemental_source","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 21
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 22
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture