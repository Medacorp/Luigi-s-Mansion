scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 600
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 90
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=41..45}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=46..50}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=51..55}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=56..60}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationZ 60
execute if entity @s[scores={AnimationProgress=15..20}] run scoreboard players add @s AnimationRotationZ 110
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0