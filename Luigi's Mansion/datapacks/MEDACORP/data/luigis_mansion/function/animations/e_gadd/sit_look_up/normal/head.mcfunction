teleport @s[tag=!flipped_gravity] ~ ~-0.35 ~ ~ ~
teleport @s[tag=flipped_gravity] ~ ~0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 400
scoreboard players set @s[scores={AnimationProgress=31}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=31}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=4..9}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=10..12}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=31..38}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=39..44}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=47..52}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=53..60}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30