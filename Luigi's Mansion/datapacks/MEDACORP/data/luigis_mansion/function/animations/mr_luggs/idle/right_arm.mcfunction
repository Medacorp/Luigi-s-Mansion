scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=10..15}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=30..35}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0