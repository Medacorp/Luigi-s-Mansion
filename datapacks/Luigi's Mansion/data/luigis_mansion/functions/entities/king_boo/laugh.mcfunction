scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.king_boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/boo/laugh
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0