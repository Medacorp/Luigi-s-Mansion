scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.gold_ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/ghost/normal/laugh
tag @s[scores={ActionTime=40}] add vanish
tag @s[scores={ActionTime=40}] remove laugh
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
execute positioned ^ ^ ^0.7 unless entity @a[distance=..0.7,gamemode=!spectator] run tag @s add stop_laugh

scoreboard players set @s[tag=stop_laugh] ActionTime 0
scoreboard players set @s[tag=stop_laugh] AnimationProg 0
tag @s[tag=stop_laugh] remove laugh
tag @s[tag=stop_laugh] remove stop_laugh