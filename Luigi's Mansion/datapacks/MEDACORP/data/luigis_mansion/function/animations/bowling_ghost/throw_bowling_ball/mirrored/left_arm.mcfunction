scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -450
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players remove @s AnimationRotationX 500
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players add @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationY 170
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players remove @s AnimationRotationY 170
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players add @s AnimationRotationY 150
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0