scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 150
scoreboard players set @s[scores={AnimationProgress=2}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=3}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=4}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=5}] AnimationRotationX 150
scoreboard players set @s[scores={AnimationProgress=6..9}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=10}] AnimationRotationX 150
scoreboard players set @s[scores={AnimationProgress=11}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=12}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=13}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=14}] AnimationRotationX 150
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0