scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=265..270}] ^ ^ ^-0.05
teleport @s[scores={AnimationProgress=271..275}] ^0.05 ^ ^-0.05
teleport @s[scores={AnimationProgress=276..280}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=291..300}] ^ ^ ^0.05
teleport @s[scores={AnimationProgress=301..315}] ^0.05 ^ ^0.05
data remove entity @s[tag=held_item] item
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..858}] item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
execute unless entity @s[scores={AnimationProgress=230..458}] run data modify entity @s[tag=held_item,scores={AnimationProgress=..730}] item merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
data modify entity @s[tag=held_item,scores={AnimationProgress=730..858}] item merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
scoreboard players add @s[scores={Time=1..20}] AnimationRotationX 30
scoreboard players remove @s[scores={Time=21..60}] AnimationRotationX 30
scoreboard players add @s[scores={Time=61..80}] AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
scoreboard players set @s[scores={AnimationProgress=230}] AnimationRotationX 0
scoreboard players remove @s[scores={AnimationProgress=261..265}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=316..320}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=321..325}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=326..335}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=458}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
scoreboard players set @s[scores={AnimationProgress=858}] AnimationRotationX -450
scoreboard players add @s[scores={AnimationProgress=261..265}] AnimationRotationY 60
scoreboard players remove @s[scores={AnimationProgress=326..335}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=859..878}] AnimationRotationY 40