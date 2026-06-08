scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=41..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=41..60}] run scoreboard players remove @s AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0