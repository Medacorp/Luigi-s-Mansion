scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=3}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.2 ~ ~"}
execute if entity @s[scores={AnimationProgress=25}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.2 ~ ~"}
execute if entity @s[scores={AnimationProgress=55}] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.2 ~ ~"}
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80