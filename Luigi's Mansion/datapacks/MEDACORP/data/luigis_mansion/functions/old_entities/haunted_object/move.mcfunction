execute at @s[scores={WaitTime=100}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if score #temp Move matches 1.. at @s run function luigis_mansion:old_entities/haunted_object/move_forward
tag @s[distance=..0.01] add collision