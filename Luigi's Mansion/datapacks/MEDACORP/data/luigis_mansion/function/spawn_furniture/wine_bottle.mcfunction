summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.wine_bottle"},Tags:["furniture","standing_furniture","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/wine_bottle"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 8
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture