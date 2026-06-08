scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=14..25}] ~ ~-1 ~
teleport @s[scores={AnimationProgress=26}] ~ ~-0.9 ~
teleport @s[scores={AnimationProgress=27}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=28}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=29}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=30}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=31}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=32}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=33}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=34}] ~ ~-0.1 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 300
execute if entity @s[scores={AnimationProgress=7..15}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=26..33}] run scoreboard players remove @s AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0