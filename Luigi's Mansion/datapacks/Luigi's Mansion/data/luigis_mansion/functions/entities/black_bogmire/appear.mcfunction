scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.black_bogmire.spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:animations/bogmire/appear
execute at @s run teleport @s[scores={ActionTime=1}] ~ ~-3 ~
execute at @s run teleport @s[scores={ActionTime=1..30}] ~ ~0.1 ~
tag @s[scores={ActionTime=30}] remove new_black_bogmire
scoreboard players set @s[scores={ActionTime=30}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0