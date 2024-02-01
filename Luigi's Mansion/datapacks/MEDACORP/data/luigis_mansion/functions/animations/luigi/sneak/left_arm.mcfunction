scoreboard players add @s Time 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Time=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={Time=9..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={Time=25..32}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
data modify entity @s[scores={Time=32..}] Pose.Head[0] set value 20.0f
scoreboard players set @s[scores={Time=32..}] Time 0
scoreboard players reset #temp Time