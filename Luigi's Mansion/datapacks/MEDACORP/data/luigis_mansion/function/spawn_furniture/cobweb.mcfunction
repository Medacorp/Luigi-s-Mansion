summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cobweb"},data:{entity:{namespace:"luigis_mansion",id:"cobweb"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cobweb","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},pulled:{components:{"minecraft:custom_model_data":{floats:[1f]}}},pushed:{components:{"minecraft:custom_model_data":{floats:[2f]}}},broken:{components:{"minecraft:custom_model_data":{floats:[3f]}}}}}}},Tags:["cobweb","affected_by_vacuum","immobile","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] VacuumTime 0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture