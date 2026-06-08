scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..}] ^ ^ ^0.1
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=41..45}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0