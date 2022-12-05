data modify entity @s Pose set from storage luigis_mansion:data mirror.data.Pose
execute store result entity @s Pose.Head[1] float 0.01 run data get entity @s Pose.Head[1] -100
execute store result entity @s Pose.Head[2] float 0.01 run data get entity @s Pose.Head[2] -100
execute store result entity @s Pose.RightArm[1] float 0.01 run data get entity @s Pose.RightArm[1] -100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Pose.LeftArm[1] -100
execute store result entity @s Pose.RightLeg[1] float 0.01 run data get entity @s Pose.RightLeg[1] -100
execute store result entity @s Pose.LeftLeg[1] float 0.01 run data get entity @s Pose.LeftLeg[1] -100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get entity @s Pose.RightArm[2] -100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get entity @s Pose.LeftArm[2] -100
execute store result entity @s Pose.RightLeg[2] float 0.01 run data get entity @s Pose.RightLeg[2] -100
execute store result entity @s Pose.LeftLeg[2] float 0.01 run data get entity @s Pose.LeftLeg[2] -100
data modify entity @s Small set from storage luigis_mansion:data mirror.data.Small
data modify entity @s ArmorItems set from storage luigis_mansion:data mirror.data.ArmorItems
data modify entity @s HandItems[0] set from storage luigis_mansion:data mirror.data.HandItems[1]
data modify entity @s HandItems[1] set from storage luigis_mansion:data mirror.data.HandItems[0]
execute unless data storage luigis_mansion:data mirror.data{Tags:["portrait_ghost"]} unless data storage luigis_mansion:data mirror.data{Tags:["hidden"]} unless data storage luigis_mansion:data mirror.data{Tags:["visible"]} unless data storage luigis_mansion:data mirror.data{Tags:["vacuumable"]} if data storage luigis_mansion:data mirror.data.ArmorItems[{id:"minecraft:oak_button"}] run function luigis_mansion:entities/reflection/ghost_reflection
data modify storage luigis_mansion:data RightHandItem set from entity @s HandItems[0]
data modify storage luigis_mansion:data LeftHandItem set from entity @s HandItems[1]
function #luigis_mansion:entities/reflection/swap_model

execute unless data storage luigis_mansion:data mirror.data{Tags:["immobile"]} run function luigis_mansion:entities/reflection/mobile_entity

execute if data storage luigis_mansion:data mirror.data{Tags:["static"]} run tag @s add static

execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run data merge entity @s {ArmorItems:[],HandItems:[],Invisible:1b}