execute unless entity @s[scores={AnimationProgress=1..}] run scoreboard players add @s AnimationProgress 1
execute if entity @e[tag=this_luigi,tag=!model_piece,limit=1,scores={AnimationProgress=70..}] run scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 200
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ -1600
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -200
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1600
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0