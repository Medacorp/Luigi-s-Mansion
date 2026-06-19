scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},predicate=luigis_mansion:furniture/altered_pitch_chance] add altered_pitch
execute if entity @s[scores={ActionTime=1},tag=!altered_pitch] run playsound luigis_mansion:furniture.wooden_cabinet_mounted_wooden_colorful_candelabra block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=1},tag=altered_pitch] run playsound luigis_mansion:furniture.wooden_cabinet_mounted_wooden_colorful_candelabra block @a[tag=same_room] ~ ~ ~ 1 0.8
tag @s[scores={ActionTime=1}] remove altered_pitch
execute if entity @s[scores={ActionTime=1..5}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=7}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=8}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1