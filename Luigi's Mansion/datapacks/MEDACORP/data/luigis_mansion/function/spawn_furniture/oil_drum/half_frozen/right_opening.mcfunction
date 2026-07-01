summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.frozen_oil_drum"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/frozen_oil_drum","minecraft:custom_model_data":{flags:[1b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,1b]}}}}}},Tags:["furniture","immobile","standing_furniture","can_be_ice_elemental_source","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 18
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture