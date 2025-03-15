scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1..},tag=held_item] equipment.head set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -60
execute if entity @s[scores={AnimationProgress=40}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..4}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=5..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=11..14}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=15..18}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
execute at @s run teleport @s[scores={AnimationProgress=23}] ^ ^ ^-0.05
execute at @s run teleport @s[scores={AnimationProgress=24..25}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={AnimationProgress=26}] ^ ^ ^-0.05
execute at @s run teleport @s[scores={AnimationProgress=33}] ^ ^ ^-0.05
execute at @s run teleport @s[scores={AnimationProgress=34..35}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={AnimationProgress=36}] ^ ^ ^-0.05
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0