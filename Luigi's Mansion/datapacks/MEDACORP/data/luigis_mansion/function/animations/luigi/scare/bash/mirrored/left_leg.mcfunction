scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21}] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=22}] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=23}] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=24}] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=25}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=26}] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=27}] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=28}] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=29}] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=30..}] ~ ~-0.6 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -50
execute unless data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players set @s[scores={AnimationProgress=31..}] AnimationProgress 30
scoreboard players set @s[scores={AnimationProgress=30}] AnimationRotationX -900
scoreboard players remove @s[scores={AnimationProgress=31}] AnimationRotationX 80
scoreboard players remove @s[scores={AnimationProgress=31..34}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=35..38}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=38..}] AnimationProgress 30