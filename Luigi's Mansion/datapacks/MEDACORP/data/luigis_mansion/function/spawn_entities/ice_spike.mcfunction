summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ice_spike"},CustomNameVisible:0b,Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ice_spike","minecraft:custom_model_data":{flags:[0b],strings:["default"]},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"ice_spike"},model_data:{default:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["default"]}}},breaking:{components:{"minecraft:custom_model_data":{flags:[0b],strings:["breaking"]}}},invisible:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}},Silent:1b,Pose:{Head:[0.0f,0.01f,0.0f]},LeftHanded:1b,Tags:["ice_spike","optional_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationX run data get entity @s Rotation[0]
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[1]
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity