scoreboard players add @s[scores={ActionTime=1..30}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0

teleport @s[scores={ActionTime=1..10}] ^ ^ ^0.04
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.chauncey.attack hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=11..30}] ~ ~ ~ ~-18 ~
execute at @s run function luigis_mansion:animations/chauncey/attack
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0