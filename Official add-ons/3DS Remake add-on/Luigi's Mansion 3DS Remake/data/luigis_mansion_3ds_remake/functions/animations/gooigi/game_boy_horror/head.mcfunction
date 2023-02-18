scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
data modify entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[30.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 302
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 304
execute if entity @s[scores={AnimationProgress=3}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 306
execute if entity @s[scores={AnimationProgress=4}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 304
execute if entity @s[scores={AnimationProgress=5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 302
execute if entity @s[scores={AnimationProgress=6}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 300
execute if entity @s[scores={AnimationProgress=7}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 298
execute if entity @s[scores={AnimationProgress=8}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 296
execute if entity @s[scores={AnimationProgress=9}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 298
execute if entity @s[scores={AnimationProgress=10}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players set #temp Time 300
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0