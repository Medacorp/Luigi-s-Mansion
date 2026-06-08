scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX 500
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players set @s AnimationRotationX 490
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 480
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players set @s AnimationRotationX 470
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationX 460
execute if entity @s[scores={AnimationProgress=6}] run scoreboard players set @s AnimationRotationX 450
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players set @s AnimationRotationX 440
execute if entity @s[scores={AnimationProgress=8}] run scoreboard players set @s AnimationRotationX 430
execute if entity @s[scores={AnimationProgress=9}] run scoreboard players set @s AnimationRotationX 420
execute if entity @s[scores={AnimationProgress=10}] run scoreboard players set @s AnimationRotationX 410
execute if entity @s[scores={AnimationProgress=11}] run scoreboard players set @s AnimationRotationX 400
execute if entity @s[scores={AnimationProgress=12}] run scoreboard players set @s AnimationRotationX 410
execute if entity @s[scores={AnimationProgress=13}] run scoreboard players set @s AnimationRotationX 420
execute if entity @s[scores={AnimationProgress=14}] run scoreboard players set @s AnimationRotationX 430
execute if entity @s[scores={AnimationProgress=15}] run scoreboard players set @s AnimationRotationX 440
execute if entity @s[scores={AnimationProgress=16}] run scoreboard players set @s AnimationRotationX 450
execute if entity @s[scores={AnimationProgress=17}] run scoreboard players set @s AnimationRotationX 460
execute if entity @s[scores={AnimationProgress=18}] run scoreboard players set @s AnimationRotationX 470
execute if entity @s[scores={AnimationProgress=19}] run scoreboard players set @s AnimationRotationX 480
execute if entity @s[scores={AnimationProgress=20}] run scoreboard players set @s AnimationRotationX 490
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0