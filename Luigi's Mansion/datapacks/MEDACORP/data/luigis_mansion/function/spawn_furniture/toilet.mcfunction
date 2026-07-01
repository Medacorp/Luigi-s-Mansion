summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.toilet"},Tags:["furniture","immobile","standing_furniture","can_be_water_elemental_source","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"toilet"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/toilet","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[6f]}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture