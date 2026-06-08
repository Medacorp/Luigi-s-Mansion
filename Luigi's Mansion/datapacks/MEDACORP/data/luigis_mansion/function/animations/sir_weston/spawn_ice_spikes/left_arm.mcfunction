scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=41..50}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=76..80}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=76..80}] run scoreboard players remove @s AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0