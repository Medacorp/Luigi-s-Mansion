scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0