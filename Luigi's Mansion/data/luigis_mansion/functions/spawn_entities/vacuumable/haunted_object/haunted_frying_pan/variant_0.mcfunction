summon minecraft:armor_stand ~ ~-0.45 ~ {CustomName:'{"translate":"luigis_mansion:entity.haunted_frying_pan"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:98}}],Pose:{Head:[0.0f,0.0f,1.01f]},Tags:["haunted_object","ghost","vacuumable","haunted_frying_pan","optional_ghost","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~-0.45 ~ ~ ~
execute as @e[tag=this_entity,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotX run data get entity @s Rotation[0] 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeRotY run data get entity @s Rotation[1] 1
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
tag @e[tag=this_entity,limit=1] remove this_entity