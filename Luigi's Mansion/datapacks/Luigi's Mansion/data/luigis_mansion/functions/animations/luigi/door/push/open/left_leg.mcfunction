scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute if entity @s[scores={AnimationProgress=7..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=11..18}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=19..26}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=27..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
data modify entity @s[scores={AnimationProgress=50..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0
scoreboard players reset #temp Time