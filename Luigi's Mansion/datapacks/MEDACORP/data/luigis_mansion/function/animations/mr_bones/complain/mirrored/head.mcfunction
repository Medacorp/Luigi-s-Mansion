scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=9..26}] ~ ~-1.5 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-1.4 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-1.2 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=31}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=32}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=33}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=34}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=35..}] ~ ~-0.6 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1400
scoreboard players add @s[scores={AnimationProgress=10..15}] AnimationRotationZ 100
scoreboard players remove @s[scores={AnimationProgress=26..30}] AnimationRotationZ 100
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0