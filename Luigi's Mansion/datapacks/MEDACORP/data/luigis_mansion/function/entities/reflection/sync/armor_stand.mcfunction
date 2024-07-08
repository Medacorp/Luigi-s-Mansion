data modify entity @s Pose.Head set from storage luigis_mansion:data mirror.data.Pose.Head
data modify entity @s Pose.LeftArm set from storage luigis_mansion:data mirror.data.Pose.RightArm
data modify entity @s Pose.RightArm set from storage luigis_mansion:data mirror.data.Pose.LeftArm
data modify entity @s Pose.LeftLeg set from storage luigis_mansion:data mirror.data.Pose.RightLeg
data modify entity @s Pose.RightLeg set from storage luigis_mansion:data mirror.data.Pose.LeftLeg
execute store result entity @s Pose.Head[1] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.Head[1] -100
execute store result entity @s Pose.Head[2] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.Head[2] -100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.RightArm[1] -100
execute store result entity @s Pose.LeftArm[2] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.RightArm[2] -100
execute store result entity @s Pose.RightArm[1] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.LeftArm[1] -100
execute store result entity @s Pose.RightArm[2] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.LeftArm[2] -100
execute store result entity @s Pose.LeftLeg[1] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.RightLeg[1] -100
execute store result entity @s Pose.LeftLeg[2] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.RightLeg[2] -100
execute store result entity @s Pose.RightLeg[1] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.LeftLeg[1] -100
execute store result entity @s Pose.RightLeg[2] float 0.01 run data get storage luigis_mansion:data mirror.data.Pose.LeftLeg[2] -100
data modify entity @s Small set from storage luigis_mansion:data mirror.data.Small
data modify entity @s HasVisualFire set from storage luigis_mansion:data mirror.data.HasVisualFire
data modify entity @s ArmorItems set from storage luigis_mansion:data mirror.data.ArmorItems
data modify entity @s HandItems[0] set from storage luigis_mansion:data mirror.data.HandItems[1]
data modify entity @s HandItems[1] set from storage luigis_mansion:data mirror.data.HandItems[0]
data modify entity @s attributes set from storage luigis_mansion:data mirror.data.attributes
function luigis_mansion:entities/reflection/swap_model

execute if entity @s[tag=!immobile] run function luigis_mansion:entities/reflection/mobile_entity
execute if data storage luigis_mansion:data mirror.data{Tags:["immobile"]} run tag @s add immobile

execute if data storage luigis_mansion:data mirror.data{Tags:["static"]} run tag @s add static

execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run data merge entity @s {ArmorItems:[],HandItems:[],Invisible:1b}
execute at @s rotated ~ 0 if block ^ ^ ^0.1 minecraft:black_concrete run tag @s[tag=immobile] add static