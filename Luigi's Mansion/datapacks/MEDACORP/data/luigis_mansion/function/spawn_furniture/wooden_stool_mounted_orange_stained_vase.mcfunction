summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.wooden_stool_mounted_orange_stained_vase"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/wooden_stool_mounted_orange_stained_vase"}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 25
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 25
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture