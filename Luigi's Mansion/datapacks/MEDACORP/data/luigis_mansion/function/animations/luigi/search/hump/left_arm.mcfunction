scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=13..15}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationY -100
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0