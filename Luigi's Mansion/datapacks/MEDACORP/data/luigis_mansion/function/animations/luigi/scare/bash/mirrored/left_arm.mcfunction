scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21},tag=!shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=!shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=!shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=!shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=!shrunk] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=!shrunk] ~ ~-0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=!shrunk] ~ ~-0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=!shrunk] ~ ~-0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=!shrunk] ~ ~-0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=!shrunk] ~ ~-0.6 ~ ~ ~
teleport @s[scores={AnimationProgress=21},tag=shrunk] ~ ~-0.03 ~ ~ ~
teleport @s[scores={AnimationProgress=22},tag=shrunk] ~ ~-0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=23},tag=shrunk] ~ ~-0.09 ~ ~ ~
teleport @s[scores={AnimationProgress=24},tag=shrunk] ~ ~-0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=25},tag=shrunk] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=26},tag=shrunk] ~ ~-0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=27},tag=shrunk] ~ ~-0.21 ~ ~ ~
teleport @s[scores={AnimationProgress=28},tag=shrunk] ~ ~-0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=29},tag=shrunk] ~ ~-0.27 ~ ~ ~
teleport @s[scores={AnimationProgress=30..},tag=shrunk] ~ ~-0.3 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationX 180
execute unless data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players set @s[scores={AnimationProgress=31..}] AnimationProgress 30
scoreboard players set @s[scores={AnimationProgress=30}] AnimationRotationX 0
scoreboard players remove @s[scores={AnimationProgress=31..32}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=33..36}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=37..38}] AnimationRotationX 40
execute if entity @s[tag=held_item,tag=!shrunk] positioned ^-0.375 ^0.03 ^ run function luigis_mansion:animations/luigi/scare/bash/normal/item
execute if entity @s[tag=held_item,tag=shrunk] positioned ^-0.1825 ^0.02 ^ run function luigis_mansion:animations/luigi/scare/bash/normal/item
scoreboard players set @s[scores={AnimationProgress=38..}] AnimationProgress 30