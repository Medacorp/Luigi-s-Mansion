scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..35}] run scoreboard players add @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=36..50}] run scoreboard players remove @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationZ 90
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationZ 90
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0