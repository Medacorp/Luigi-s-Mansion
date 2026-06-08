scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11..}] ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=41..45}] run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=51..55}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players remove @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0