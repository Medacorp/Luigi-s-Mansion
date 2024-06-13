scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=101..120}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0