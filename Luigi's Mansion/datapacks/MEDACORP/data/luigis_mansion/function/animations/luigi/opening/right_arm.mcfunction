scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=265..270}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=271..275}] ^-0.05 ^ ^-0.05
teleport @s[scores={AnimationProgress=276..280}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=291..300}] ^ ^ ^0.05
teleport @s[scores={AnimationProgress=301..315}] ^-0.05 ^ ^0.05
data modify entity @s[tag=held_item] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty"}}
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..858}] ArmorItems[3] set from storage luigis_mansion:data luigi.flashlight
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..730}] ArmorItems[3] merge from storage luigis_mansion:data luigi.flashlight.components."minecraft:custom_data".model_data.on
data modify entity @s[tag=held_item,scores={AnimationProgress=730..858}] ArmorItems[3] merge from storage luigis_mansion:data luigi.flashlight.components."minecraft:custom_data".model_data.off
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Time=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={Time=21..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={Time=61..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
data modify entity @s[scores={Time=80..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
data modify entity @s[scores={AnimationProgress=230}] Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=316..320}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=321..325}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
data modify entity @s[scores={AnimationProgress=458}] Pose.Head[0] set value 0f
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
data modify entity @s[scores={AnimationProgress=858}] Pose.Head[0] set value -45f
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 6
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=859..878}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time