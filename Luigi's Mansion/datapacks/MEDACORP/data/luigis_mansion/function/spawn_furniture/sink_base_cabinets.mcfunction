summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.sink_base_cabinets"},Tags:["furniture","standing_furniture","can_be_water_elemental_source","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/sink_base_cabinets"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 60
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 28
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementUp 24
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElementForward -1
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture