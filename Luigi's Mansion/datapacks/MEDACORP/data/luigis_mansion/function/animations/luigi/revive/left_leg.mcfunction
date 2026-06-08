scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0