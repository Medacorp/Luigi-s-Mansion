scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[-90.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 5
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProgress=1},tag=boo] ArmorItems[3].tag merge value {CustomModelData:94}
data modify entity @s[scores={AnimationProgress=1,ActionTime=1},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:47}
data modify entity @s[scores={AnimationProgress=1,ActionTime=2},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:48}
data modify entity @s[scores={AnimationProgress=1,ActionTime=3},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:49}
data modify entity @s[scores={AnimationProgress=1,ActionTime=4},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:50}
data modify entity @s[scores={AnimationProgress=1,ActionTime=5},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:51}
data modify entity @s[scores={AnimationProgress=1,ActionTime=6},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:52}
data modify entity @s[scores={AnimationProgress=1,ActionTime=7},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:53}
data modify entity @s[scores={AnimationProgress=1,ActionTime=8},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:54}
data modify entity @s[scores={AnimationProgress=1,ActionTime=9},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:55}
data modify entity @s[scores={AnimationProgress=1,ActionTime=10},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:56}
data modify entity @s[scores={AnimationProgress=1,ActionTime=11},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:57}
data modify entity @s[scores={AnimationProgress=1,ActionTime=12},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:58}
data modify entity @s[scores={AnimationProgress=1,ActionTime=13},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:59}
data modify entity @s[scores={AnimationProgress=1,ActionTime=14},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:60}
data modify entity @s[scores={AnimationProgress=1,ActionTime=15},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:61}
data modify entity @s[scores={AnimationProgress=1},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:84}
data modify entity @s[scores={AnimationProgress=1}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProgress=1}] HandItems[1].id set value "minecraft:diamond_pickaxe"
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0