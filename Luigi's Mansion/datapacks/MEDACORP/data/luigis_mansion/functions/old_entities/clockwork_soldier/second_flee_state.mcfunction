scoreboard players add @s[scores={ActionTime=1..9}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.clockwork_soldier.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:old_animations/clockwork_soldier/complain
scoreboard players set @s[scores={ActionTime=10}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0