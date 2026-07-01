summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"e3_demo:furniture.silver_candelabra"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"e3_demo:furniture/silver_candelabra"}},Tags:["furniture","standing_furniture","candelabra","immobile","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_furniture/setup/candle_flame/get_angles
execute rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.75 rotated as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 7
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture