scoreboard players add @s AnimationProgress 1
data remove entity @s[tag=held_item] equipment.head
data modify entity @s[tag=held_item,scores={AnimationProgress=236..}] equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify entity @s[tag=held_item,scores={AnimationProgress=236..316}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
data modify entity @s[tag=held_item,scores={AnimationProgress=317..}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
scoreboard players add @s[scores={AnimationProgress=1..235}] Time 2
execute if entity @s[scores={Time=1..20}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={Time=21..60}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={Time=61..80}] run scoreboard players remove @s AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236}] AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=270..289}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=270..289}] run scoreboard players add @s AnimationRotationZ 10