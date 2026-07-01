summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.weights"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/weights"}},Tags:["furniture","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture