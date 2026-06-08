scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.63 ~
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 4
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationX 4
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationX 4
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationZ 6
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationZ 6
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationZ 6
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0