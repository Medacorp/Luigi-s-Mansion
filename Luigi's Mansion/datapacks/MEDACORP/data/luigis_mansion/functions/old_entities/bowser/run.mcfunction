execute unless entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProgress 0
scoreboard players set @s ActionTime 1
function luigis_mansion:old_animations/bowser/run
execute facing entity @p[tag=same_room,tag=!spectator,tag=player] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 50
execute at @s run function luigis_mansion:old_entities/bowser/move_forward
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run tag @s remove run
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run scoreboard players set @s AnimationProgress 0
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run scoreboard players reset @s ActionTime