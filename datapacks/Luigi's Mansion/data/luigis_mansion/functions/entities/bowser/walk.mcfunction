execute unless entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProg 0
scoreboard players set @s ActionTime 1
function luigis_mansion:animations/bowser/walk
execute facing entity @p[tag=same_room,gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 5
execute at @s run function luigis_mansion:entities/bowser/move_forward
execute positioned ~ ~-3 ~ if entity @a[distance=..6,gamemode=!spectator] run tag @s remove walk
execute positioned ~ ~-3 ~ if entity @a[distance=..6,gamemode=!spectator] run scoreboard players set @s AnimationProg 0
execute positioned ~ ~-3 ~ if entity @a[distance=..6,gamemode=!spectator] run scoreboard players reset @s ActionTime