summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.projector"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"projector"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/projector","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{flags:[0b]}}},open:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 7
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture