summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.waterfall"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"waterfall",open_animation:{namespace:"luigis_mansion",id:"waterfall"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/waterfall","minecraft:custom_model_data":{flags:[0b],floats:[0f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[10f]}}}}}}},Tags:["furniture","immobile","hanging_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 50
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture