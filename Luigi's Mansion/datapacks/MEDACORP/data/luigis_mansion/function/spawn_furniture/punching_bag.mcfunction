summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.punching_bag"},Tags:["furniture","immobile","swinging_harms","hanging_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"swinging"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/punching_bag"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 60
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture