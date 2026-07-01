summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cloth"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"cloth"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cloth/toilet_paper","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}},Tags:["furniture","cloth","front","requires_hitbox","this_entity"]}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_entity,limit=1] item.components merge value {"minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}
teleport @e[tag=this_entity,limit=1] ^ ^ ^ ~ ~
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture