scoreboard players add @s[scores={ActionTime=1..59}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.chauncey.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/chauncey/laugh
tag @s[scores={ActionTime=60}] remove laugh
scoreboard players reset @s[scores={ActionTime=60}] ActionTime