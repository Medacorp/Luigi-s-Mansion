execute if entity @s[tag=!fleeing_no_target] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute at @s run function luigis_mansion:animations/boo/flee
scoreboard players set #temp Move 9
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move_forward