scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1},tag=boo] ArmorItems[3].tag merge value {CustomModelData:180}
data modify entity @s[scores={AnimationProg=1},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:181}
data modify entity @s[scores={AnimationProg=1},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:182}
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set value "minecraft:stone_button"
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set value "minecraft:stone_button"
data modify entity @s[scores={AnimationProg=20},tag=boo] ArmorItems[3].tag merge value {CustomModelData:50}
data modify entity @s[scores={AnimationProg=20,ActionTime=1},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:65}
data modify entity @s[scores={AnimationProg=20,ActionTime=2},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:66}
data modify entity @s[scores={AnimationProg=20,ActionTime=3},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:67}
data modify entity @s[scores={AnimationProg=20,ActionTime=4},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:68}
data modify entity @s[scores={AnimationProg=20,ActionTime=5},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:69}
data modify entity @s[scores={AnimationProg=20,ActionTime=6},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:70}
data modify entity @s[scores={AnimationProg=20,ActionTime=7},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:71}
data modify entity @s[scores={AnimationProg=20,ActionTime=8},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:72}
data modify entity @s[scores={AnimationProg=20,ActionTime=9},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:73}
data modify entity @s[scores={AnimationProg=20,ActionTime=10},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:74}
data modify entity @s[scores={AnimationProg=20,ActionTime=11},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:75}
data modify entity @s[scores={AnimationProg=20,ActionTime=12},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:76}
data modify entity @s[scores={AnimationProg=20,ActionTime=13},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:77}
data modify entity @s[scores={AnimationProg=20,ActionTime=14},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:78}
data modify entity @s[scores={AnimationProg=20,ActionTime=15},tag=boolossus] ArmorItems[3].tag merge value {CustomModelData:79}
data modify entity @s[scores={AnimationProg=20},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:80}
data modify entity @s[scores={AnimationProg=20}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProg=20}] HandItems[1].id set value "minecraft:diamond_pickaxe"
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0