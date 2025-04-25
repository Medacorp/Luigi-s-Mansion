scoreboard players add @s AnimationProgress 1
data remove entity @s[tag=held_item] equipment.head
data modify entity @s[tag=held_item,scores={AnimationProgress=236..}] equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify entity @s[tag=held_item,scores={AnimationProgress=236..316}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
data modify entity @s[tag=held_item,scores={AnimationProgress=317..}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
scoreboard players add @s[scores={AnimationProgress=1..235}] Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Time=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={Time=21..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={Time=61..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
data modify entity @s[scores={Time=80..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236..}] Time 0
data modify entity @s[scores={AnimationProgress=236}] Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProgress=270..289}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=270..289}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time