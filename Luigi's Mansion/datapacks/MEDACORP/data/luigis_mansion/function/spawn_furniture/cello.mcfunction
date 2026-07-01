summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cello"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"cello"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cello","minecraft:custom_data":{model_data:{default:{},open:{}}}}},Tags:["furniture","immobile","instrument","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 13
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 8
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture