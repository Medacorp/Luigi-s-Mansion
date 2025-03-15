scoreboard players add @s AnimationProgress 1
data modify entity @s[tag=held_item] equipment.head set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}
scoreboard players add @s[scores={AnimationProgress=1..235}] Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Time=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={Time=21..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={Time=61..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
data modify entity @s[scores={Time=80..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236..}] Time 0
data modify entity @s[scores={AnimationProgress=236}] Pose.Head[0] set value -45f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=250..269}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time