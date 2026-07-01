summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.metal_vase"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"rolling"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/metal_vase"}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 14
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture