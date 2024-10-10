summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.tall_wooden_colorful_candelabra"}',Tags:["furniture","standing_furniture","candelabra","immobile","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/tall_wooden_colorful_candelabra","minecraft:unbreakable":{},"minecraft:custom_model_data":1,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",mirror:{components:{"minecraft:custom_model_data":0}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/get_angle_for_candle
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.0667 ^0.31 rotated ~-90 0 rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.0667 ^-0.31 rotated ~90 0 rotated ~45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^0.375 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.0667 ^ rotated ~-90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^0.375 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.0667 ^ rotated ~90 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute if score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~90 ~ positioned ^ ^2.0667 ^-0.31 rotated ~-90 0 rotated ~-45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
execute unless score #temp2 Time = #temp Time rotated ~ 0 positioned ^ ^ ^-0.284 rotated as @e[tag=candle_flame_rotation,limit=1] rotated ~-90 ~ positioned ^ ^-2.0667 ^0.31 rotated ~90 0 rotated ~-45 0 run function luigis_mansion:spawn_furniture/setup/candle_flame
kill @e[tag=candle_flame_rotation,limit=1]
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 21
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