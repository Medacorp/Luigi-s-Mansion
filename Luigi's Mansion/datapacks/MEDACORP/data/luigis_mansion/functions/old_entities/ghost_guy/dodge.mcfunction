scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s[tag=dancing] run function luigis_mansion:old_animations/ghost_guy/dodge
teleport @s[scores={ActionTime=1..10}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=26..30}] ~ ~0.2 ~
tag @s[scores={ActionTime=30}] remove dodge
scoreboard players set @s[scores={ActionTime=30}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0