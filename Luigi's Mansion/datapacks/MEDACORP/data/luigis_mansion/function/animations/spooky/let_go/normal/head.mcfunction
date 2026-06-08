scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 780
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -700
execute if entity @s[scores={AnimationProgress=1..12}] run scoreboard players remove @s AnimationRotationX 170
execute if entity @s[scores={AnimationProgress=13..40}] run scoreboard players remove @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=56..60}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0