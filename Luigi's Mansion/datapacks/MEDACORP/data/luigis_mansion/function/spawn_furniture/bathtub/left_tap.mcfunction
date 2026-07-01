summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.bathtub"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/bathtub","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}},Tags:["furniture","immobile","standing_furniture","can_be_water_elemental_source","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 40
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 24
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementLeft -14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture