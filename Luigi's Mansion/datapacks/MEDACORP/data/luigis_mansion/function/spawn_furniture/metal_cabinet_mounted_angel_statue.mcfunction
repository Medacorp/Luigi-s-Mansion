summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.metal_cabinet_mounted_angel_statue"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/metal_cabinet_mounted_angel_statue"}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 44
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture