scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=flipped_gravity,tag=!shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=flipped_gravity,tag=!shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=flipped_gravity,tag=!shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=flipped_gravity,tag=!shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=flipped_gravity,tag=!shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=flipped_gravity,tag=!shrunk] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=flipped_gravity,tag=!shrunk] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=flipped_gravity,tag=!shrunk] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=flipped_gravity,tag=!shrunk] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=!flipped_gravity,tag=shrunk] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=!flipped_gravity,tag=shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=!flipped_gravity,tag=shrunk] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=!flipped_gravity,tag=shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=!flipped_gravity,tag=shrunk] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=!flipped_gravity,tag=shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=!flipped_gravity,tag=shrunk] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=!flipped_gravity,tag=shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=!flipped_gravity,tag=shrunk] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=1},tag=flipped_gravity,tag=shrunk] ~ ~0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=2},tag=flipped_gravity,tag=shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=3},tag=flipped_gravity,tag=shrunk] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=4},tag=flipped_gravity,tag=shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=5},tag=flipped_gravity,tag=shrunk] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=6},tag=flipped_gravity,tag=shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=7},tag=flipped_gravity,tag=shrunk] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=8},tag=flipped_gravity,tag=shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=9},tag=flipped_gravity,tag=shrunk] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=10..},tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] ArmorItems[3] merge from entity @s ArmorItems[3].components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0