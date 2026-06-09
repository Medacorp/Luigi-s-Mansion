scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute unless score #temp AnimationProgress matches 1..2 run scoreboard players add @s AnimationRotationZ 2
execute if score #temp AnimationProgress matches 1..2 run scoreboard players remove @s AnimationRotationZ 2
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0