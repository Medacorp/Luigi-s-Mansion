scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..}] ^ ^ ^0.1
scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=41..45}] AnimationRotationZ 20
scoreboard players add @s[scores={AnimationProgress=46..50}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0