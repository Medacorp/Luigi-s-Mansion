scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20