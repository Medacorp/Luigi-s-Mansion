scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=1..20}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20