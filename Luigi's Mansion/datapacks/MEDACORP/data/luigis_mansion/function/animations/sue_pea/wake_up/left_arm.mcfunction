scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=19..60}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=61..102}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=121..140}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=121..140}] run scoreboard players remove @s AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0