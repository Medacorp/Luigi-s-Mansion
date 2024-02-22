scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 100
execute if entity @s[scores={AnimationProgress=1..180}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players remove #temp Time 675
execute if entity @s[scores={AnimationProgress=181..200}] store result entity @s Pose.Head[0] float 0.01 run scoreboard players add #temp Time 675
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=221..225}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=226..235}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=236..240}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=240..}] AnimationProgress 0