scoreboard players set @s AnimationProgress 0
scoreboard players set @s AnimationRotationX 0
scoreboard players set @s AnimationRotationY 0
scoreboard players set @s AnimationRotationZ 0
scoreboard players set @s[tag=flipped_gravity] AnimationRotationZ -1800
scoreboard players set @s Pull 0
scoreboard players set @s ActionTime 0
scoreboard players set @s Time 0
tag @s remove was_low_health
data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.default