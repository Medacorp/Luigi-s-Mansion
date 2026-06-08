scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 125
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -50
execute if entity @s[scores={AnimationProgress=1..12}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=13..24}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=25..34}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=35..46}] run scoreboard players remove @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=47..48}] run scoreboard players add @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=48}] AnimationProgress 24