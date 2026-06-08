scoreboard players add @s AnimationProgress 1
teleport @s ^ ^0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=18..23}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=38..40}] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0