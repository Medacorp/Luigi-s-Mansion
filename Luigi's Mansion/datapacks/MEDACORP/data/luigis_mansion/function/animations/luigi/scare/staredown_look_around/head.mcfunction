scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
scoreboard players operation #temp AnimationProgress = @s AnimationProgress
scoreboard players operation #temp AnimationProgress %= #4 Constants
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=41..60}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=91..100}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=41..60}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=91..100}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute unless score #temp AnimationProgress matches 1..2 run scoreboard players add @s AnimationRotationZ 2
execute if score #temp AnimationProgress matches 1..2 run scoreboard players remove @s AnimationRotationZ 2
scoreboard players reset #temp AnimationProgress
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0