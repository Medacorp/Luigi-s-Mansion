scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_beta_mansion:entity.body_slammer.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/twirler/complain
tag @s[scores={ActionTime=40}] remove complain
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0