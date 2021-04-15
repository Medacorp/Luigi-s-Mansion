execute at @s[scores={WaitTime=100}] facing entity @p[gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 5
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/haunted_object/move_forward
tag @s[distance=..0.01] add collision