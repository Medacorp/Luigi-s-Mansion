scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3}] ~ ~0.008 ~
teleport @s[scores={AnimationProgress=4}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=5}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=6}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=15}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=16}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=17}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=18}] ~ ~0.008 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..6}] AnimationRotationZ 2
scoreboard players remove @s[scores={AnimationProgress=7..12}] AnimationRotationZ 2
scoreboard players add @s[scores={AnimationProgress=13..18}] AnimationRotationZ 2
scoreboard players remove @s[scores={AnimationProgress=19..24}] AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0