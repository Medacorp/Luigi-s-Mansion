scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=5..12}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0