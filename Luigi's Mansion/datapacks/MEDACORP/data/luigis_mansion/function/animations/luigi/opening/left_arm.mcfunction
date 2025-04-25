scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=230..326},tag=held_item] ^-0.35 ^0.2 ^0.25
teleport @s[scores={AnimationProgress=327..384},tag=held_item] ^-0.175 ^0.1 ^0.125
data remove entity @s[tag=held_item] equipment.head
data modify entity @s[tag=held_item,scores={AnimationProgress=230..354}] equipment.head set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:contest_reward_map"}}
data modify entity @s[tag=held_item,scores={AnimationProgress=858..}] equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify entity @s[tag=held_item,scores={AnimationProgress=858..926}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
data modify entity @s[tag=held_item,scores={AnimationProgress=927..}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={Time=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={Time=21..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={Time=61..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
data modify entity @s[scores={Time=80..}] Pose.Head[0] set value 0.001f
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
data modify entity @s[scores={AnimationProgress=230}] Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProgress=231..235},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=326..335},tag=!held_item] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 4
data modify entity @s[scores={AnimationProgress=458}] Pose.Head[0] set value 0f
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
data modify entity @s[scores={AnimationProgress=858}] Pose.Head[0] set value 0f
execute if entity @s[scores={AnimationProgress=879..898}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=231..235},tag=!held_item] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 6
execute if entity @s[scores={AnimationProgress=321..325}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=331..335}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=335}] store result entity @s Pose.Head[1] float 1 run scoreboard players set #temp Time 0
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=879..898}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time