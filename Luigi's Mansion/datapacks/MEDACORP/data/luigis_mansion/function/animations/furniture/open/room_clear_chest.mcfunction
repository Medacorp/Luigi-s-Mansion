scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.room_clear_chest.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..4}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players remove @s[scores={ActionTime=4}] AnimationRotationX 50
scoreboard players add @s[scores={ActionTime=7}] AnimationRotationX 40
scoreboard players remove @s[scores={ActionTime=8}] AnimationRotationX 50
scoreboard players add @s[scores={ActionTime=10}] AnimationRotationX 40
scoreboard players set @s[scores={ActionTime=12}] ActionTime -1