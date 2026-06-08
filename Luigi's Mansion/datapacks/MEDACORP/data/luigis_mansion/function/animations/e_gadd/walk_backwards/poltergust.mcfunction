scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=9..12}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=17..20}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=21..24}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0