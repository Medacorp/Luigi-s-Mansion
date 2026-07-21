scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..3}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={AnimationProgress=5}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=6}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 4
execute if entity @s[scores={AnimationProgress=8}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=9}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 3
execute if entity @s[scores={AnimationProgress=11}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=12}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 4
execute if entity @s[scores={AnimationProgress=14}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=15}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 3
execute if entity @s[scores={AnimationProgress=17}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=18}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 4
execute if entity @s[scores={AnimationProgress=20}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=21}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 3
execute if entity @s[scores={AnimationProgress=23}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=24}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 4
execute if entity @s[scores={AnimationProgress=26}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=27}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 3
execute if entity @s[scores={AnimationProgress=29}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=30}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 4
execute if entity @s[scores={AnimationProgress=32}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 2
execute if entity @s[scores={AnimationProgress=33..34}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players remove @s AnimationModelModifier 1
execute if entity @s[scores={AnimationProgress=35}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 1
execute if entity @s[scores={AnimationProgress=36}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 0
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:furniture.telephone.ring block @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 2