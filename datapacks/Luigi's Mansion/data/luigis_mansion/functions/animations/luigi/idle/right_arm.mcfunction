scoreboard players add @s Time 1
data modify entity @s[scores={Time=1}] Pose.Head[2] set value 0.001f
execute store result score #temp Time run data get entity @s Pose.Head[2] 4
execute if entity @s[scores={Time=6..25}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=36..55}] store result entity @s Pose.Head[2] float 0.25 run scoreboard players remove #temp Time 1
scoreboard players set @s[scores={Time=60..}] Time 0
scoreboard players reset #temp Time