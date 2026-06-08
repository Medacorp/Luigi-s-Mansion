scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0