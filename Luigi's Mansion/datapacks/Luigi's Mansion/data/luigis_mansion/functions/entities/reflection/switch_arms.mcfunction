data modify storage luigis_mansion:data Pose set from entity @s Pose
data modify entity @s Pose.RightArm set from storage luigis_mansion:data Pose.LeftArm
data modify entity @s Pose.LeftArm set from storage luigis_mansion:data Pose.RightArm
data modify entity @s Pose.RightLeg set from storage luigis_mansion:data Pose.LeftLeg
data modify entity @s Pose.LeftLeg set from storage luigis_mansion:data Pose.RightLeg
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
data modify storage luigis_mansion:data RightHandItem set from entity @s HandItems[0]
data modify storage luigis_mansion:data LeftHandItem set from entity @s HandItems[1]
data modify entity @s HandItems[0] set from storage luigis_mansion:data LeftHandItem
data modify entity @s HandItems[1] set from storage luigis_mansion:data RightHandItem
function #luigis_mansion:entities/reflection/swap_model
data remove storage luigis_mansion:data RightHandItem
data remove storage luigis_mansion:data LeftHandItem
data remove storage luigis_mansion:data Pose