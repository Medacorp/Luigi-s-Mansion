scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.dish_washer block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={ActionTime=1..7}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=8..9}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=10}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1