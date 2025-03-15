scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=20..},tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=11},tag=flipped_gravity,tag=!shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=flipped_gravity,tag=!shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=flipped_gravity,tag=!shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=flipped_gravity,tag=!shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=flipped_gravity,tag=!shrunk] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=!shrunk] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=!shrunk] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=!shrunk] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=!shrunk] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=20..},tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=11},tag=!flipped_gravity,tag=shrunk] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=!flipped_gravity,tag=shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=!flipped_gravity,tag=shrunk] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=!flipped_gravity,tag=shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=!flipped_gravity,tag=shrunk] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=!flipped_gravity,tag=shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=!flipped_gravity,tag=shrunk] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=!flipped_gravity,tag=shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=!flipped_gravity,tag=shrunk] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=20..},tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=11},tag=flipped_gravity,tag=shrunk] ~ ~0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=12},tag=flipped_gravity,tag=shrunk] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=13},tag=flipped_gravity,tag=shrunk] ~ ~0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=14},tag=flipped_gravity,tag=shrunk] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=15},tag=flipped_gravity,tag=shrunk] ~ ~0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=16},tag=flipped_gravity,tag=shrunk] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=17},tag=flipped_gravity,tag=shrunk] ~ ~0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=18},tag=flipped_gravity,tag=shrunk] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=19},tag=flipped_gravity,tag=shrunk] ~ ~0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=20..},tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[-20.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0