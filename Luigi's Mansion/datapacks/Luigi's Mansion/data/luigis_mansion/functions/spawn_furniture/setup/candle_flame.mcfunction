summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.candle_flame"}',Pose:{Head:[0.0f,0.0f,0.0f]},HasVisualFire:1b,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{}],Tags:["furniture","candle_flame","immobile","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","searchable_by_vacuum","searchable_by_dust","searchable_by_fire","searchable_by_water","searchable_by_ice","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,tag=candle_flame,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage luigis_mansion:data furniture.candle_flames[0] run data modify storage luigis_mansion:data candle_flame set from storage luigis_mansion:data furniture.candle_flames[0]
execute if data storage luigis_mansion:data candle_flame{lit:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add lit
execute if data storage luigis_mansion:data candle_flame{purple:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add purple
execute if data storage luigis_mansion:data candle_flame{cannot_extinguish:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add cannot_extinguish
execute if data storage luigis_mansion:data candle_flame{always_burn:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add always_burn
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_source
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source run tag @e[tag=this_entity,tag=candle_flame,limit=1] add fire_elemental_source
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{must_vacuum:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_must_vacuum
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{always_spawn:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_always_spawn
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{timer:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_timer
execute if data storage luigis_mansion:data candle_flame.tags run data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Tags append from storage luigis_mansion:data candle_flame.tags[]
data remove storage luigis_mansion:data candle_flame
data remove storage luigis_mansion:data furniture.candle_flames[0]
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Pose.Head set from storage luigis_mansion:data furniture.pose
data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Pose.Head[1] set value 0.01f
execute as @e[tag=this_entity,tag=candle_flame,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] FurnitureRadius 1
tag @e[tag=this_entity,tag=candle_flame,limit=1] remove this_entity