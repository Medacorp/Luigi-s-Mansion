scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=25..44}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=45..54}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=55..124}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=125..134}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=135..154}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1},tag=boo] ArmorItems[3].tag merge value {CustomModelData:100}
data modify entity @s[scores={AnimationProg=1},tag=boolossus,tag=split] ArmorItems[3].tag merge value {CustomModelData:63}
data modify entity @s[scores={AnimationProg=1},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:87}
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set value "minecraft:stone_button"
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set value "minecraft:stone_button"
data modify entity @s[scores={AnimationProg=160},tag=boo] ArmorItems[3].tag merge value {CustomModelData:99}
data modify entity @s[scores={AnimationProg=160},tag=boolossus,tag=split] ArmorItems[3].tag merge value {CustomModelData:48}
data modify entity @s[scores={AnimationProg=160},tag=king_boo] ArmorItems[3].tag merge value {CustomModelData:86}
data modify entity @s[scores={AnimationProg=160}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={AnimationProg=160}] HandItems[1].id set value "minecraft:diamond_pickaxe"
scoreboard players set @s[scores={AnimationProg=160}] AnimationProg 0