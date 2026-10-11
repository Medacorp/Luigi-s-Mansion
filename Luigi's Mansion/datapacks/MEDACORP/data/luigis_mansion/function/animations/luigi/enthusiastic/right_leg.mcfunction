scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 20
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=15}] AnimationProgress 0