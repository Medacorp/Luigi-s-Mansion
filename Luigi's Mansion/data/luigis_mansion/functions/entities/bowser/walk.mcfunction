scoreboard players set @s ActionTime 1
execute facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 5
execute at @s run function luigis_mansion:entities/bowser/move_forward
execute if entity @a[distance=..6,gamemode=!spectator] run tag @s remove walk
execute if entity @a[distance=..6,gamemode=!spectator] run scoreboard players reset @s ActionTime