scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -4
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -8
execute if entity @s[scores={AnimationProgress=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -12
execute if entity @s[scores={AnimationProgress=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -16
execute if entity @s[scores={AnimationProgress=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -20
execute if entity @s[scores={AnimationProgress=6}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -16
execute if entity @s[scores={AnimationProgress=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -12
execute if entity @s[scores={AnimationProgress=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -8
execute if entity @s[scores={AnimationProgress=9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -4
execute if entity @s[scores={AnimationProgress=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute if entity @s[scores={AnimationProgress=11}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 4
execute if entity @s[scores={AnimationProgress=12}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 8
execute if entity @s[scores={AnimationProgress=13}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 12
execute if entity @s[scores={AnimationProgress=14}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 16
execute if entity @s[scores={AnimationProgress=15}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=16}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 16
execute if entity @s[scores={AnimationProgress=17}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 12
execute if entity @s[scores={AnimationProgress=18}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 8
execute if entity @s[scores={AnimationProgress=19}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 4
execute if entity @s[scores={AnimationProgress=20}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
data merge entity @s[scores={AnimationProgress=20}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=20},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0