summon minecraft:item_display ~ ~1.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ice_spike"},data:{entity:{namespace:"luigis_mansion",id:"ice_spike"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ice_spike","minecraft:custom_model_data":{flags:[0b],strings:["default"]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["default"]}}},broken:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["broken"]}}},invisible:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}},item_display:"head",Tags:["ice_spike","optional_ghost","this_entity"]}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~1.45 ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationX run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[1]
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity