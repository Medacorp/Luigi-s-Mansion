scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..}] ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=41..45}] AnimationRotationY 40
scoreboard players add @s[scores={AnimationProgress=46..50}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=51..55}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=46..50}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0