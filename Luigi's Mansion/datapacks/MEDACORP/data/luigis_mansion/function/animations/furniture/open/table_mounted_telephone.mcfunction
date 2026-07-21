scoreboard players add @s ActionTime 1
execute unless entity @e[tag=same_room,tag=luigi,nbt={data:{animation:{namespace:"luigis_mansion",id:"answer_phone"}}}] run scoreboard players set @s[scores={ActionTime=11..}] ActionTime -1
execute if entity @s[scores={ActionTime=11}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 7
execute if entity @s[scores={ActionTime=-1}] store result entity @s item.components."minecraft:custom_model_data".floats[0] float 1 run scoreboard players set @s AnimationModelModifier 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 12
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:furniture.telephone.pick_up block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=-1}] run playsound luigis_mansion:furniture.telephone.put_down block @a[tag=same_room] ~ ~ ~ 1