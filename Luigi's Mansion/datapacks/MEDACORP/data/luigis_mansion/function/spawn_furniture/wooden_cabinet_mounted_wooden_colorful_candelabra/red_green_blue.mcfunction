summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.wooden_cabinet_mounted_wooden_colorful_candelabra"}',Tags:["furniture","standing_furniture","candelabra","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/wooden_cabinet_mounted_wooden_colorful_candelabra","minecraft:unbreakable":{},"minecraft:damage":2,"minecraft:max_damage":3,"minecraft:custom_model_data":0,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"wooden_cabinet_mounted_wooden_colorful_candelabra"},model_data:{default:{components:{"minecraft:custom_model_data":0}},open:{components:{"minecraft:custom_model_data":12}}},mirror:{components:{"minecraft:damage":1}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/candle_flame/get_angles
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.284 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^2.6902 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.31 rotated as @e[tag=this_entity,limit=1] rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.375 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^2.6902 rotated as @e[tag=this_entity,limit=1] run function luigis_mansion:spawn_furniture/setup/candle_flame
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.284 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^2.6902 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^0.31 rotated as @e[tag=this_entity,limit=1] rotated ~-45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 27
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture