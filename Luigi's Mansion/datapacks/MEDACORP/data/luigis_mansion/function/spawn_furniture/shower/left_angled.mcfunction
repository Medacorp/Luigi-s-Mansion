summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.shower"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/shower","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}},Tags:["furniture","immobile","can_be_water_elemental_source","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 36
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture