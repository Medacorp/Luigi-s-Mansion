scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..28}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=33..40}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0