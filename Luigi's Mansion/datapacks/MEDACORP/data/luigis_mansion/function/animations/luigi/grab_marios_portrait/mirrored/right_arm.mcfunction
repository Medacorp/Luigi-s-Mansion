scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=41..50}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0