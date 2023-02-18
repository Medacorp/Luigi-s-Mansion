scoreboard players add @s[scores={ActionTime=1..39}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.sir_weston.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run function luigis_mansion:animations/sir_weston/complain
scoreboard players set @s[scores={ActionTime=40}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0