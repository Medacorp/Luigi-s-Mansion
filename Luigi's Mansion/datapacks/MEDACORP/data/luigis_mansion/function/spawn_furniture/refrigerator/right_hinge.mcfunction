summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.refrigerator"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"refrigerator"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/refrigerator","minecraft:custom_model_data":{flags:[0b],floats:[0f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[4f]}}}}}}},Tags:["furniture","immobile","standing_furniture","can_be_ice_elemental_source","right_swing","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 35
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 25
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 5
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture