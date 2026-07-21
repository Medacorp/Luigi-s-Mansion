summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.table_mounted_telephone"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"approach",interact_animation:{namespace:"luigis_mansion",id:"answer_phone"},approachable_animation:{namespace:"luigis_mansion",id:"table_mounted_telephone"},open_animation:{namespace:"luigis_mansion",id:"table_mounted_telephone"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/table_mounted_telephone","minecraft:custom_model_data":{flags:[0b],floats:[0f]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}},model_data:{default:{},open:{}}}}},Tags:["furniture","immobile","standing_furniture","no_gooigi","this_entity"]}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_entity,limit=1] item.components merge value {"minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 11
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture