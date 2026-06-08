scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
execute if entity @s[scores={AnimationProgress=20..24}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=25..29}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=20..24}] run scoreboard players remove @s AnimationRotationY 90
execute if entity @s[scores={AnimationProgress=25..29}] run scoreboard players add @s AnimationRotationY 90
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0