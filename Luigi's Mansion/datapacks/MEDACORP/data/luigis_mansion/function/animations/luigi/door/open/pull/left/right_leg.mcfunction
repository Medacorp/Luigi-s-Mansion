scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=5..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=17..24}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=25..32}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=33..36}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
data modify entity @s[scores={AnimationProgress=50..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0
scoreboard players reset #temp Time