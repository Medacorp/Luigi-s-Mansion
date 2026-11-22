scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.ghost_platform block @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={ActionTime=1..40}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=41..54}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=55}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 41
execute if entity @s[scores={ActionTime=56..79}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=80}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 0
execute if entity @s[scores={ActionTime=41}] positioned ~ ~-0.2 ~ run particle minecraft:cloud ^ ^1 ^ 0.4 0.4 0.4 0 20 normal @a[tag=same_room]
tag @s[scores={ActionTime=80}] remove open
scoreboard players set @s[scores={ActionTime=80}] ActionTime 0