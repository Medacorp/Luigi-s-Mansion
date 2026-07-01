summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.legged_sink"},Tags:["furniture","immobile","standing_furniture","can_be_water_elemental_souce","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/legged_sink"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture