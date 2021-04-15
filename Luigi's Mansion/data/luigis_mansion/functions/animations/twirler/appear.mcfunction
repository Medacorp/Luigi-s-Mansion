scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=3..6}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=3..6}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=7..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=8}] AnimationProg 0