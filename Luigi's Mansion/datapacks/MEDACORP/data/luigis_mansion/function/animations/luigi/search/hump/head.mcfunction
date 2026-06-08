scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=6..9}] run scoreboard players set @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=10}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=11}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=12}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=13}] run scoreboard players set @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=14}] run scoreboard players set @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=15}] run scoreboard players set @s AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0