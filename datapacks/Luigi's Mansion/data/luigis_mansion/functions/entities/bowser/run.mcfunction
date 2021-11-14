execute unless entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProg 0
scoreboard players set @s ActionTime 1
function luigis_mansion:animations/bowser/run
execute facing entity @p[tag=same_room,tag=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 5
execute at @s run function luigis_mansion:entities/bowser/move_forward_fast
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run tag @s remove run
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run scoreboard players set @s AnimationProg 0
execute positioned ~ ~-3 ~ if entity @a[distance=..6,tag=!spectator] run scoreboard players reset @s ActionTime