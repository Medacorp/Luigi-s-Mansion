execute unless entity @s[scores={ActionTime=1}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"run"}
scoreboard players set @s ActionTime 1
execute facing entity @p[tag=same_room,tag=!spectator,tag=player] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 50
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute at positioned ^ ^ ^2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute if entity @a[distance=..6,tag=!spectator] run tag @s remove run
execute if entity @a[distance=..6,tag=!spectator] run data remove entity @s data.animation
execute if entity @a[distance=..6,tag=!spectator] run scoreboard players reset @s ActionTime

execute positioned ^ ^ ^-1 if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/stomp_on
execute at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/stomp_on
