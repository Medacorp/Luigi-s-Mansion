scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationZ 90
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationZ 90
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=81..100}] run scoreboard players remove @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=100..}] AnimationProgress 0