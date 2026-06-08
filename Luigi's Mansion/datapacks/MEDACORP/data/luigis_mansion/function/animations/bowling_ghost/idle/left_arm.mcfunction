scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0