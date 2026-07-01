summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.harp"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"harp"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/harp","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}},model_data:{default:{},open:{}}}}},Tags:["furniture","immobile","instrument","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 22
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 40
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 16
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture