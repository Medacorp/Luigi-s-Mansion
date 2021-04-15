scoreboard players add @s ActionTime 1
execute at @s[scores={ActionTime=1}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/boo/move_forward
teleport @s[tag=wall] ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] ActionTime 20
tag @s[tag=wall] remove wall
tag @s[scores={ActionTime=20}] remove attack
scoreboard players reset @s[scores={ActionTime=20}] ActionTime