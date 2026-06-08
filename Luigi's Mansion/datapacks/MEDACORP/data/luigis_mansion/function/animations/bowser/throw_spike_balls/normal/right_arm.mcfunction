scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 140
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=41..50}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=61..70}] run scoreboard players remove @s AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0