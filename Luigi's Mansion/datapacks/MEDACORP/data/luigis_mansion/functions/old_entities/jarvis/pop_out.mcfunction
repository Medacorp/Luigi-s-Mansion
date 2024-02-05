scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/jarvis/pop_out
teleport @s[scores={ActionTime=6..15}] ~ ~0.1 ~
execute if entity @s[scores={ActionTime=6}] run function luigis_mansion:old_entities/ghost/turn_visible
tag @s[scores={ActionTime=20}] remove pop_out
scoreboard players set @s[scores={ActionTime=10}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0