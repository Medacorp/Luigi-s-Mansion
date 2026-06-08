scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -800
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -250
execute if entity @s[scores={AnimationProgress=1..10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=11..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 1
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0