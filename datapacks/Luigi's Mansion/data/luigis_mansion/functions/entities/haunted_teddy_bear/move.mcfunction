execute at @s[scores={WaitTime=100}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 5
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/haunted_teddy_bear/move_forward
tag @s[distance=..0.01] add collision