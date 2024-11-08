summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.golden_triple_candelabra"}',Tags:["furniture","standing_furniture","candelabra","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/golden_triple_candelabra","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;1b],strings:["burning"]},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",mirror:{components:{"minecraft:custom_model_data":{flags:[B;0b],strings:["burning"]}}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/candle_flame/get_angles
execute rotated as @e[tag=forward_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.284 rotated as @e[tag=up_angle,tag=candle_angle,limit=1] positioned ^ ^ ^1.3751 rotated as @e[tag=left_angle,tag=candle_angle,limit=1] positioned ^ ^ ^-0.31 rotated as @e[tag=this_entity,limit=1] rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 14
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