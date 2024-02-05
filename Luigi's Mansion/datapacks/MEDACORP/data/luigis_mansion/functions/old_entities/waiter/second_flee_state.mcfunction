scoreboard players add @s[scores={ActionTime=1..31}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.waiter.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:old_animations/waiter/complain
scoreboard players set @s[scores={ActionTime=32}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=32}] ActionTime 0