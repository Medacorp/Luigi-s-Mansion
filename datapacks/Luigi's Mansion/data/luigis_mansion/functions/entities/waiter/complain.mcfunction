scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.waiter.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/waiter/complain
tag @s[scores={ActionTime=80}] remove complain
tag @s[scores={ActionTime=80}] add vanish
scoreboard players set @s[scores={ActionTime=80}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=80}] ActionTime 0