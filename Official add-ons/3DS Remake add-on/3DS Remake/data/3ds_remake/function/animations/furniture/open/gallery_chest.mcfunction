scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1..8}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=8}] ActionTime -1