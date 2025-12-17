summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.candle_flame"},HasVisualFire:1b,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"candle_flame"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/candle_flame","minecraft:custom_model_data":{floats:[0f]}}}},Tags:["furniture","candle_flame","immobile","can_be_fire_elemental_source","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","searchable_by_vacuum","searchable_by_dust","searchable_by_fire","searchable_by_water","searchable_by_ice","freeze_animation","same_room_players_only","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,tag=candle_flame,limit=1] ~ ~-1.43875 ~ ~ 0
execute unless data storage luigis_mansion:data furniture.candle_flames_edit[0] unless score #candle_flames Selected matches 1 if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.candle_flame.too_few",color:"red",with:[{type:"selector",selector:"@s"}]}]}
execute unless data storage luigis_mansion:data furniture.candle_flames_edit[0] run scoreboard players set #candle_flames Selected 1
execute if data storage luigis_mansion:data furniture.candle_flames_edit[0] run data modify storage luigis_mansion:data candle_flame set from storage luigis_mansion:data furniture.candle_flames_edit[0]
execute if data storage luigis_mansion:data candle_flame{type:"incense"} run data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Tags set value ["furniture","candle_flame","incense","can_be_fire_elemental_source","static","affected_by_vacuum","searchable_by_vacuum","spawn_particles","freeze_animation","same_room_players_only","this_entity"]
execute if data storage luigis_mansion:data candle_flame{type:"incense"} run scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] HomeRotationX -90
execute if data storage luigis_mansion:data candle_flame{type:"incense"} as @e[tag=this_entity,tag=candle_flame,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[0]
execute if data storage luigis_mansion:data candle_flame{type:"purple"} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add purple
execute if data storage luigis_mansion:data candle_flame{lit:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add lit
execute unless data storage luigis_mansion:data candle_flame{type:"incense"} if data storage luigis_mansion:data candle_flame{cannot_extinguish:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add cannot_extinguish
execute unless data storage luigis_mansion:data candle_flame{type:"incense"} if data storage luigis_mansion:data candle_flame{always_burn:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add always_burn
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_source
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source run tag @e[tag=this_entity,tag=candle_flame,limit=1] add fire_elemental_source
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source run tag @e[tag=this_entity,tag=candle_flame,limit=1] add enabled
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{cannot_disable:1b} run tag @e[tag=this_entity,limit=1] add elemental_cannot_disable
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{must_vacuum:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_must_vacuum
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{always_spawn:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_always_spawn
execute if data storage luigis_mansion:data candle_flame.fire_elemental_source{timer:1b} run tag @e[tag=this_entity,tag=candle_flame,limit=1] add elemental_timer
execute if data storage luigis_mansion:data candle_flame.tags run data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Tags append from storage luigis_mansion:data candle_flame.tags[]
data remove storage luigis_mansion:data candle_flame
data remove storage luigis_mansion:data furniture.candle_flames_edit[0]
data modify entity @e[tag=this_entity,tag=candle_flame,limit=1] Pose.Head set from entity @e[tag=this_entity,tag=!candle_flame,limit=1] Pose.Head
execute as @e[tag=this_entity,tag=candle_flame,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] FurnitureElementLeft 0
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] FurnitureElementUp 0
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] FurnitureElementForward 0
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] FurnitureSizeRadius 1
execute as @e[tag=this_entity,tag=candle_flame,limit=1] store result score @s PositionX run data get entity @s Pos[0] 10
execute as @e[tag=this_entity,tag=candle_flame,limit=1] store result score @s PositionY run data get entity @s Pos[1] 10
execute as @e[tag=this_entity,tag=candle_flame,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players add @e[tag=this_entity,tag=candle_flame,limit=1] PositionY 15
scoreboard players set @e[tag=this_entity,tag=candle_flame,limit=1] Room 0
scoreboard players operation @e[tag=this_entity,tag=candle_flame,limit=1] Room = @s Room
execute store result score @e[tag=this_entity,tag=candle_flame,limit=1] Room run data get storage luigis_mansion:data furniture.room
tag @e[tag=this_entity,tag=candle_flame,limit=1] remove this_entity