scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..11},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=20},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=1..11},tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=flipped_gravity,tag=!shrunk] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=flipped_gravity,tag=!shrunk] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=flipped_gravity,tag=!shrunk] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=flipped_gravity,tag=!shrunk] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=!shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=!shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=!shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=!shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=20},tag=flipped_gravity,tag=!shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=1..11},tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=!flipped_gravity,tag=shrunk] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=!flipped_gravity,tag=shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=!flipped_gravity,tag=shrunk] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=!flipped_gravity,tag=shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=shrunk] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=shrunk] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=20},tag=!flipped_gravity,tag=shrunk] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=1..11},tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=flipped_gravity,tag=shrunk] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=flipped_gravity,tag=shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=flipped_gravity,tag=shrunk] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=flipped_gravity,tag=shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=shrunk] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=shrunk] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=20},tag=flipped_gravity,tag=shrunk] ~ ~0.03 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -50
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationY 5