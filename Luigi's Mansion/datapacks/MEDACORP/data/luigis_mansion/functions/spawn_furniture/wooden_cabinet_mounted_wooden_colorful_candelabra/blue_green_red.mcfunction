summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.wooden_cabinet_mounted_wooden_colorful_candelabra"}',Tags:["furniture","standing_furniture","wooden_cabinet","generic","candelabra","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:20,CustomModelData:8,mirror:{tag:{Damage:21}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/get_angle_for_candle
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.6902 ^0.31 rotated ~-90 0 rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.6902 ^-0.31 rotated ~90 0 rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^0.375 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.6902 ^ rotated ~-90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^0.375 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.6902 ^ rotated ~90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.6902 ^-0.31 rotated ~-90 0 rotated ~-45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.6902 ^0.31 rotated ~90 0 rotated ~-45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
kill @e[tag=candle_flame_rotation,limit=1]
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute if data storage luigis_mansion:data furniture{searched:1b,no_search_animation:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 20
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
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
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture