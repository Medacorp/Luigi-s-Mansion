scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..6}] ~ ~-0.02 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~-0.04 ~
teleport @s[scores={AnimationProgress=15..18}] ~ ~-0.02 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
execute if entity @s[scores={AnimationProgress=1..6}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=7..12}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=13..18}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=19..24}] run scoreboard players remove @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0