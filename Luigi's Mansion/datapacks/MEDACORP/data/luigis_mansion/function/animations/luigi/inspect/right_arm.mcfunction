scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 130
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationX 130
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0