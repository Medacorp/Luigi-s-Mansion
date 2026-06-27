scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^0.05 ~ ~
teleport @s[scores={AnimationProgress=2}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=3}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=4}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=5}] ^ ^ ^0.25 ~ ~
teleport @s[scores={AnimationProgress=6}] ^ ^ ^0.2 ~ ~
teleport @s[scores={AnimationProgress=7}] ^ ^ ^0.15 ~ ~
teleport @s[scores={AnimationProgress=8}] ^ ^ ^0.1 ~ ~
teleport @s[scores={AnimationProgress=9}] ^ ^ ^0.05 ~ ~
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.scared
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0
function luigis_mansion:animations/luigi/sync_head