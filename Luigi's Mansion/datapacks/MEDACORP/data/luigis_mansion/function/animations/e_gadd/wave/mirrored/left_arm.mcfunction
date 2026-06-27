scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3}] ~ ~-0.008 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-0.016 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-0.024 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.032 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~-0.04 ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.032 ~
teleport @s[scores={AnimationProgress=16}] ~ ~-0.024 ~
teleport @s[scores={AnimationProgress=17}] ~ ~-0.016 ~
teleport @s[scores={AnimationProgress=18}] ~ ~-0.008 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players add @s[scores={AnimationProgress=1..6}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=7..12}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=13..18}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=19..24}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0