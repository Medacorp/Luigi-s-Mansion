scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -50
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -200
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=41..60}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=91..100}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=41..60}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=91..100}] AnimationRotationY 30
execute unless score #temp AnimationProgress matches 1..2 run scoreboard players add @s AnimationRotationZ 2
execute if score #temp AnimationProgress matches 1..2 run scoreboard players remove @s AnimationRotationZ 2
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0