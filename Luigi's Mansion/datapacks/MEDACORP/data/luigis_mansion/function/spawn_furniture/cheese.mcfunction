summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cheese"},Tags:["furniture","immobile","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cheese"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture