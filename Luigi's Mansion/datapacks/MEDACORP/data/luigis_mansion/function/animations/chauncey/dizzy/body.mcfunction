scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 100
execute if entity @s[scores={AnimationProgress=1..160}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players remove #temp Time 675
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=240..}] AnimationProgress 0