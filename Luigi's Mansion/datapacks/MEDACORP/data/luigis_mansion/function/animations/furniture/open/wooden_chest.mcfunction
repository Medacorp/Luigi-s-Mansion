scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.wooden_chest block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..26}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=27..29}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=30}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 30
scoreboard players set @s[scores={ActionTime=30}] ActionTime -1