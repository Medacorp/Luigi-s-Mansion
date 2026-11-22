scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1..19}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=20}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=20}] ActionTime -1