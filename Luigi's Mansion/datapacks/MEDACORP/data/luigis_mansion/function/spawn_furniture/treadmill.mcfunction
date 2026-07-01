summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treadmill"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"treadmill"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/treadmill","minecraft:custom_model_data":{floats:[0f]}}},Tags:["furniture","immobile","standing_furniture","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 10
function luigis_mansion:spawn_furniture/setup/default
summon minecraft:item_display ^ ^-0.5 ^-0.5 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treadmill"},Tags:["solid_furniture_collision","no_reflection","this_entity"],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:shulker",CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treadmill"},Silent:1b,NoAI:1b,AbsorptionAmount:1000.0f,DeathLootTable:"",Peek:1b,Tags:["solid_furniture_collision","this_entity"],attributes:[{id:"minecraft:max_health",base:1000.0d},{id:"minecraft:max_absorption",base:1000.0d}],Health:1000.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,ambient:1b,amplifier:0b,show_particles:0b}]}]}
summon minecraft:item_display ^ ^-0.5 ^0.5 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treadmill"},Tags:["solid_furniture_collision","no_reflection","this_entity"],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:shulker",CustomName:{type:"translatable",translate:"luigis_mansion:furniture.treadmill"},Silent:1b,NoAI:1b,AbsorptionAmount:1000.0f,DeathLootTable:"",Peek:1b,Tags:["solid_furniture_collision","this_entity"],attributes:[{id:"minecraft:max_health",base:1000.0d},{id:"minecraft:max_absorption",base:1000.0d}],Health:1000.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,ambient:1b,amplifier:0b,show_particles:0b}]}]}
execute as @e[tag=solid_furniture_collision,tag=this_entity] run scoreboard players operation @s Room = @e[tag=this_entity,limit=1] Room
tag @e[tag=this_entity] remove this_entity
data remove storage luigis_mansion:data furniture