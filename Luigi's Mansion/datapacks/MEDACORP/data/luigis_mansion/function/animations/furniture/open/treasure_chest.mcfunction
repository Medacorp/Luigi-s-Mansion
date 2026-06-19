scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=1},predicate=luigis_mansion:furniture/altered_pitch_chance] add altered_pitch
execute if entity @s[scores={ActionTime=1},tag=!altered_pitch] run playsound luigis_mansion:furniture.treasure_chest block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=1},tag=altered_pitch] run playsound luigis_mansion:furniture.treasure_chest block @a[tag=same_room] ~ ~ ~ 1 0.8
tag @s[scores={ActionTime=1}] remove altered_pitch
execute if entity @s[scores={ActionTime=1..4}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players remove @s[scores={ActionTime=4}] AnimationRotationX 40
scoreboard players add @s[scores={ActionTime=7}] AnimationRotationX 50
scoreboard players remove @s[scores={ActionTime=8}] AnimationRotationX 40
scoreboard players add @s[scores={ActionTime=10}] AnimationRotationX 50
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1