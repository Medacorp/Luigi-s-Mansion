scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.vanish hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/jarvis/pop_in
teleport @s[scores={ActionTime=6..15}] ~ ~-0.1 ~
execute if entity @s[scores={ActionTime=15}] run function luigis_mansion:entities/ghost/turn_invisible
tag @s[scores={ActionTime=20}] remove pop_in
scoreboard players set @s[scores={ActionTime=10}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0