scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.black_bogmire.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/bogmire/vanish
execute at @s run teleport @s[scores={ActionTime=21..30}] ~ ~-0.1 ~
execute at @s[scores={ActionTime=30},tag=!big] positioned ~ ~2.1 ~ run function luigis_mansion:spawn_entities/ball/shadow/small
execute at @s[scores={ActionTime=30},tag=big] positioned ~ ~2.1 ~ run function luigis_mansion:spawn_entities/ball/shadow/big
execute if entity @s[scores={ActionTime=30}] run function luigis_mansion:other/drop_loot
tag @s[scores={ActionTime=30}] add dead