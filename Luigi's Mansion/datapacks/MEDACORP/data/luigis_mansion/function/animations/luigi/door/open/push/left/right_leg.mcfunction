scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=11..18}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=19..26}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=27..30}] run scoreboard players remove @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0