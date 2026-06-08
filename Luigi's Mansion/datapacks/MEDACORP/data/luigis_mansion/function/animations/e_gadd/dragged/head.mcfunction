scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5..}] ^ ^-0.14 ^0.3
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5..}] ^ ^0.14 ^0.3
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -200
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5