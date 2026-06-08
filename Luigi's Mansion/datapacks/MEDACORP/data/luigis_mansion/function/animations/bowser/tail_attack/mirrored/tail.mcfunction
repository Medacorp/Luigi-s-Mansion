scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..30}] ^ ^-0.333 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0