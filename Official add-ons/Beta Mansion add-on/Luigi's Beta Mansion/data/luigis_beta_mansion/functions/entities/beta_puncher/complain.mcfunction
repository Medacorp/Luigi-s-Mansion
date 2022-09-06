scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.puncher.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/puncher/complain
tag @s[scores={ActionTime=30}] remove complain
scoreboard players set @s[scores={ActionTime=30}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0