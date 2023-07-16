scoreboard players add @s[scores={ActionTime=1..17}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.slim_bankshot.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/slim_bankshot/hit
scoreboard players set @s[scores={ActionTime=18}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=18}] ActionTime 0