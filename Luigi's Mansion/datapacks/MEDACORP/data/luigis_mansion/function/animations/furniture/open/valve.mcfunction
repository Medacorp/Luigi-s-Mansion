scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=20}] run playsound luigis_mansion:furniture.valve.turn block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=36}] run playsound luigis_mansion:furniture.valve.turn block @a[tag=same_room] ~ ~ ~ 1 0.95
execute if entity @s[scores={ActionTime=52}] run playsound luigis_mansion:furniture.valve.turn block @a[tag=same_room] ~ ~ ~ 1 1.06
execute if entity @s[scores={ActionTime=72}] run playsound luigis_mansion:furniture.valve.close block @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=20..27}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=36..43}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=52..59}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
execute if entity @s[scores={ActionTime=72..87}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=100}] ActionTime -1