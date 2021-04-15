scoreboard players add @s ActionTime 1
execute at @s[scores={ActionTime=1..20}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s[scores={ActionTime=1..19}] run function luigis_mansion:animations/boo/laugh
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20..}] Move 9
execute at @s[scores={ActionTime=20..}] run function luigis_mansion:entities/boo/move_forward
scoreboard players set @s[scores={ActionTime=40}] Move 3
tag @s[scores={ActionTime=40}] remove attack
scoreboard players reset @s[scores={ActionTime=40}] ActionTime