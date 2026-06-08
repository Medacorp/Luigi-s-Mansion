scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:furniture.washing_machine block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..5}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=6..7}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={ActionTime=8..9}] run scoreboard players add @s AnimationRotationX 20
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1