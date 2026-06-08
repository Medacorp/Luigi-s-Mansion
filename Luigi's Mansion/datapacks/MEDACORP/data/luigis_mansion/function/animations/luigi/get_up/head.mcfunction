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
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=3..6}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=7..10}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..14}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=15..18}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=19..20}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=3..6}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=7..10}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..14}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=15..18}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=19..20}] AnimationRotationY 100