scoreboard players add @s[scores={ActionTime=1..19}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.uncle_grimmly.scare hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/uncle_grimmly/scare
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0