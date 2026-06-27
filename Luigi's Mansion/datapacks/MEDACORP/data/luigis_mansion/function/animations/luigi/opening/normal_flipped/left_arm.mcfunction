scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=230..326},tag=held_item] ^0.375 ^-0.2 ^0.25
teleport @s[scores={AnimationProgress=327..384},tag=held_item] ^0.175 ^-0.1 ^0.125
data remove entity @s[tag=held_item] item
data modify entity @s[tag=held_item,scores={AnimationProgress=230..354}] item set value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:contest_reward_map"}}
data modify entity @s[tag=held_item,scores={AnimationProgress=858..}] item set from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify entity @s[tag=held_item,scores={AnimationProgress=858..926}] item merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.off
data modify entity @s[tag=held_item,scores={AnimationProgress=927..}] item merge from storage luigis_mansion:data luigi.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components."minecraft:custom_data".model_data.on
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
scoreboard players remove @s[scores={Time=1..20}] AnimationRotationX 30
scoreboard players add @s[scores={Time=21..60}] AnimationRotationX 30
scoreboard players remove @s[scores={Time=61..80}] AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
scoreboard players set @s[scores={AnimationProgress=230}] AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=231..235},tag=!held_item] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=326..335},tag=!held_item] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=458}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
scoreboard players set @s[scores={AnimationProgress=858}] AnimationRotationX 0
scoreboard players remove @s[scores={AnimationProgress=879..898}] AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=231..235},tag=!held_item] run scoreboard players add @s AnimationRotationY 60
scoreboard players remove @s[scores={AnimationProgress=321..325}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=331..335}] AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=335}] run scoreboard players add @s[scores={AnimationProgress=879..898}] AnimationRotationZ 10