execute if score #temp Move > @s Distance run scoreboard players operation #temp Move = @s Distance
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:old_entities/clockwork_soldier/move_forward
scoreboard players set @s[scores={Distance=0}] WaitTime 40