scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0] 1
execute store result entity @s[scores={AnimationProg=1..18}] Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute store result entity @s[scores={AnimationProg=19..36}] Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute store result score #temp Time run data get entity @s Pose.Head[1] 1
execute if entity @s[scores={AnimationProg=19..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProg=28..36}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 10
data modify entity @s[scores={AnimationProg=36..}] Pose.Head[0] set value 0.001f
data modify entity @s[scores={AnimationProg=36..}] Pose.Head[2] set value 0.001f
scoreboard players set @s[scores={AnimationProg=36..}] AnimationProg 0
scoreboard players reset #temp Time