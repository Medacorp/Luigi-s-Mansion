scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 700
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=36..45}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=46..55}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=56..65}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=66..75}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=76..80}] run scoreboard players add @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0