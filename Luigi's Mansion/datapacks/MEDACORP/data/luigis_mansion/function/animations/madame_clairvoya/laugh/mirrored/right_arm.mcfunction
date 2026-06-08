scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=4..8}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0