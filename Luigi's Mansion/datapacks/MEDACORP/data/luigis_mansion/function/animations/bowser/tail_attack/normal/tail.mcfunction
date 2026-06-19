scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11..30}] ^ ^-0.333 ^
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11..30}] ^ ^0.333 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 50
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=31..40}] AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0