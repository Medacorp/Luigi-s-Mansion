scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-110.0f,0.0f,90.0f],LeftArm:[-110.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 10
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 10
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1},tag=boo] ArmorItems[3].tag merge value {CustomModelData:99}
data modify entity @s[scores={AnimationProg=1},tag=boolossus,tag=split] ArmorItems[3].tag merge value {CustomModelData:48}
data modify entity @s[scores={AnimationProg=1},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:86}
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set value "minecraft:diamond_pickaxe"
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0