scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=11..14}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=15..18}] run scoreboard players remove @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0