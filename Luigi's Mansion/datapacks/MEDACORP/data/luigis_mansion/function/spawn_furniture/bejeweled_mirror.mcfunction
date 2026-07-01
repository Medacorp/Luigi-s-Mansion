summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.bejeweled_mirror"},Tags:["furniture","immobile","mirror","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",mirror_surface:-0.07f},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/bejeweled_mirror","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{model_data:{solid:{components:{"minecraft:custom_model_data":{flags:[0b]}}},reflects:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 2
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture