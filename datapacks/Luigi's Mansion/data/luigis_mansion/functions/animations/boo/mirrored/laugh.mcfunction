scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1},tag=boo] ArmorItems[3].tag merge value {CustomModelData:99}
data modify entity @s[scores={AnimationProg=1},tag=boolossus,tag=split] ArmorItems[3].tag merge value {CustomModelData:48}
data modify entity @s[scores={AnimationProg=1},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:86}
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set value "minecraft:diamond_pickaxe"
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0