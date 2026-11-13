summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.gas_powered_lantern"},Tags:["furniture","standing_furniture","lamp","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/gas_powered_lantern","minecraft:custom_model_data":{flags:[0b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,0b]}}},model_data:{off:{components:{"minecraft:custom_model_data":{flags:[0b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,0b]}}}}}},on:{components:{"minecraft:custom_model_data":{flags:[0b,1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,1b]}}}}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture