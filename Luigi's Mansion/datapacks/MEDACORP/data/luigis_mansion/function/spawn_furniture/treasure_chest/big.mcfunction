summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treasure_chest"},Tags:["furniture","immobile","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"treasure_chest"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/treasure_chest/big","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[4f]}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 19
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 12
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture