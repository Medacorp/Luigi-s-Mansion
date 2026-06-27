scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=21}] ~ ~0.06 ~ ~ ~
teleport @s[scores={AnimationProgress=22}] ~ ~0.12 ~ ~ ~
teleport @s[scores={AnimationProgress=23}] ~ ~0.18 ~ ~ ~
teleport @s[scores={AnimationProgress=24}] ~ ~0.24 ~ ~ ~
teleport @s[scores={AnimationProgress=25}] ~ ~0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=26}] ~ ~0.36 ~ ~ ~
teleport @s[scores={AnimationProgress=27}] ~ ~0.42 ~ ~ ~
teleport @s[scores={AnimationProgress=28}] ~ ~0.48 ~ ~ ~
teleport @s[scores={AnimationProgress=29}] ~ ~0.54 ~ ~ ~
teleport @s[scores={AnimationProgress=30..}] ~ ~0.6 ~ ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.bash
data modify entity @s[scores={AnimationProgress=20}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=31..32}] unless data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=33..36}] unless data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=37..38}] unless data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=31..32}] if data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=33..36}] if data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=37..38}] if data storage luigis_mansion:data luigi{tags:["moved"]} run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=38..}] AnimationProgress 30