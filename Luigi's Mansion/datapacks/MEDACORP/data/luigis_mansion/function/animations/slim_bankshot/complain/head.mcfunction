scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 500
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=41..45}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0