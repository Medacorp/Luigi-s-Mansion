summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.tall_simple_triple_candelabra"}',Tags:["furniture","standing_furniture","generic","candelabra","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:21,CustomModelData:4,mirror:{tag:{Damage:20}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/get_angle_for_candle
execute if score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.317 ^0.375 rotated ~-90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.317 ^-0.375 rotated ~90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.379 ^ rotated ~-90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.379 ^ rotated ~90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.379 ^-0.375 rotated ~-90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.379 ^0.375 rotated ~90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
kill @e[tag=candle_flame_rotation,limit=1]
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 23
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture