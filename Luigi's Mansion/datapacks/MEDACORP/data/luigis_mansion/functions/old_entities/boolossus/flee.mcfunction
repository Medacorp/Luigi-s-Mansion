execute if entity @s[tag=!flee_no_target] facing entity @p[tag=same_room,tag=!spectator,tag=player] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute at @s run function luigis_mansion:old_animations/boo/flee
scoreboard players operation #temp Move *= #3 Constants
execute if score #temp Move matches 1.. at @s run function luigis_mansion:old_entities/boo/move_forward