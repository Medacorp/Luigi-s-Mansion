scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0