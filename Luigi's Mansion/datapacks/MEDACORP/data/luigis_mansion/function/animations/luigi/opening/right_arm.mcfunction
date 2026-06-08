scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=265..270}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=271..275}] ^-0.05 ^ ^-0.05
teleport @s[scores={AnimationProgress=276..280}] ^-0.05 ^ ^
teleport @s[scores={AnimationProgress=291..300}] ^ ^ ^0.05
teleport @s[scores={AnimationProgress=301..315}] ^-0.05 ^ ^0.05
data remove entity @s[tag=held_item] equipment.head
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..858}] equipment.head set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..730}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
data modify entity @s[tag=held_item,scores={AnimationProgress=730..858}] equipment.head merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
execute if entity @s[scores={Time=1..20}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={Time=21..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={Time=61..80}] run scoreboard players add @s AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
scoreboard players set @s[scores={AnimationProgress=230}] AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=261..265}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=316..320}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=321..325}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=326..335}] run scoreboard players add @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=458}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
scoreboard players set @s[scores={AnimationProgress=858}] AnimationRotationX -450
execute if entity @s[scores={AnimationProgress=261..265}] run scoreboard players remove @s AnimationRotationY 60
execute if entity @s[scores={AnimationProgress=326..335}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=859..878}] run scoreboard players add @s AnimationRotationY 40