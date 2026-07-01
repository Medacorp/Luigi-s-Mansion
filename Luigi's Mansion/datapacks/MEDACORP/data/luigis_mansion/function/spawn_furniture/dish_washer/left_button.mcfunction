summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.stove"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"stove"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/stove","minecraft:custom_model_data":{flags:[1b],floats:[0f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[6f]}}}}}}},Tags:["furniture","immobile","standing_furniture","can_be_water_elemental_source","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 22
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 21
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 17
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 6
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture