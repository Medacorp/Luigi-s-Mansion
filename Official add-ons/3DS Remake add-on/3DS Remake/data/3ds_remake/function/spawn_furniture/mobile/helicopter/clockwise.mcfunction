summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.helicopter_mobile"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"fan"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/helicopter_mobile","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}},Tags:["furniture","hanging_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 500
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture
