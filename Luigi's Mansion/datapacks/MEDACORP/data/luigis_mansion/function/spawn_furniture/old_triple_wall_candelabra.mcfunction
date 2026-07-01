summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.old_triple_wall_candelabra"},Tags:["furniture","candelabra","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/old_triple_wall_candelabra"}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_furniture/setup/candle_flame/get_angles
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.307 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.579 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.277 rotated as @e[tag=this_entity,limit=1] rotated ~45 ~ run function luigis_mansion:spawn_furniture/setup/candle_flame
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.424 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.641 rotated as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.307 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.579 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.277 rotated as @e[tag=this_entity,limit=1] rotated ~-45 ~ run function luigis_mansion:spawn_furniture/setup/candle_flame
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeRadius 6
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture