scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:furniture.breaker_switch block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=21..30}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=30}] ActionTime -1