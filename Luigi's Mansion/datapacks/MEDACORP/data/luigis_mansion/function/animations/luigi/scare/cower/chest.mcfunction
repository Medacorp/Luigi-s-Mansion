scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=!shrunk] ~ ~0.6 ~ ~ ~
teleport @s[tag=!flipped_gravity,tag=shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[tag=flipped_gravity,tag=shrunk] ~ ~0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=1}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=2..3}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=4..5}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=6..7}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=8..9}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=10}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=1}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=2..3}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=4..5}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=6..7}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=8..9}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=10}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0