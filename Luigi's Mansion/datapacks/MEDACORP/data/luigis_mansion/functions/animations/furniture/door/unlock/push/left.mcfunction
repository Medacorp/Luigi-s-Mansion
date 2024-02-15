scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[1] 10
execute if entity @s[scores={AnimationProgress=240..249}] store result entity @s Pose.Head[1] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=260}] AnimationProgress 0