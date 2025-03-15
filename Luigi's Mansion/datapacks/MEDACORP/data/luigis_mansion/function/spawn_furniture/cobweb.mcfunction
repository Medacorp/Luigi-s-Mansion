summon minecraft:armor_stand ~ ~-0.94 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cobweb"},Pose:{Head:[0.01f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"cobweb"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cobweb","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},pulled:{components:{"minecraft:custom_model_data":{floats:[1f]}}},pushed:{components:{"minecraft:custom_model_data":{floats:[2f]}}},broken:{components:{"minecraft:custom_model_data":{floats:[3f]}}}}}}}},Tags:["cobweb","affected_by_vacuum","immobile","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-0.94 ~ ~ ~
execute as @e[tag=this_entity,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
scoreboard players set @e[tag=this_entity,limit=1] VacuumTime 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture