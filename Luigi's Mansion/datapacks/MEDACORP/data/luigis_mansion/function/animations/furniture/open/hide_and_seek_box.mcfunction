scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:furniture.hide_and_seek_box block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..8}] store result entity @s equipment.head.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players add @s AnimationModelModifier 1
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1