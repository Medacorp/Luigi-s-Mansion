scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=2..4}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=6..8}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=12..14}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=16..18}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0