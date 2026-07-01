summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.food"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"food",open_animation:{namespace:"luigis_mansion",id:"food"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/food","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},slightly_decreased:{components:{"minecraft:custom_model_data":{floats:[1f]}}},largely_decreased:{components:{"minecraft:custom_model_data":{floats:[2f]}}},open:{components:{"minecraft:custom_model_data":{floats:[3f]}}}}}}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 16
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture