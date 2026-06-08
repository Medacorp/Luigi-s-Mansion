scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 450
execute if entity @s[scores={AnimationProgress=3..12}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=13..24}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0