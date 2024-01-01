scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=24}] {Pose:{Head:[-40.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=3..6}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=7..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=11..14}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=15..16}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 16
execute store result score #temp Time run data get entity @s Pose.Head[0] 
execute if entity @s[scores={AnimationProgress=16..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=27..36}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=37..48}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={AnimationProgress=48}] AnimationProgress 24
scoreboard players reset #temp Time