scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1..15,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=16..30,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 1.8
execute if entity @s[scores={ActionTime=31..45,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 1.6
execute if entity @s[scores={ActionTime=46..60,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 1.4
execute if entity @s[scores={ActionTime=61..75,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 1.2
execute if entity @s[scores={ActionTime=76..90,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=91..105,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 0.8
execute if entity @s[scores={ActionTime=106..120,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 0.6
execute if entity @s[scores={ActionTime=121..135,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 0.4
execute if entity @s[scores={ActionTime=136..150,RoomNoise=0}] run playsound luigis_mansion:furniture.water.fall block @a[tag=same_room] ~ ~ ~ 0.2
scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 50
execute if entity @s[scores={ActionTime=15}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=30}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=45}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=60}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=75}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=90}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=105}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=120}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=135}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=150}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
tag @s[scores={ActionTime=170}] add remove_from_existence
scoreboard players set @s[scores={ActionTime=170}] ActionTime -1