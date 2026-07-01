summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.table_mounted_tea_set_and_huge_candelabra"},Tags:["furniture","standing_furniture","candelabra","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/table_mounted_tea_set_and_huge_candelabra","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_furniture/setup/candle_flame/get_angles
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.189 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^1.4067512 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.437 rotated as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture