scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.mr_bones.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
teleport @s[scores={ActionTime=1..15}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=21..35}] ~ ~0.1 ~
execute at @s run function luigis_mansion:animations/mr_bones/complain
tag @s[scores={ActionTime=40}] remove complain
scoreboard players set @s[scores={ActionTime=40}] Time 60
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0