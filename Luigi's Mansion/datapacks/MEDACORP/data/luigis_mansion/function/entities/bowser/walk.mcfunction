execute unless entity @s[scores={ActionTime=1}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"walk"}
scoreboard players set @s ActionTime 1
execute facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 25
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute at @s positioned ^ ^ ^2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air run function luigis_mansion:entities/bowser/stop_moving
execute if entity @e[distance=..6,tag=luigi,limit=1] run tag @s remove walk
execute if entity @e[distance=..6,tag=luigi,limit=1] run data remove entity @s data.animation
execute if entity @e[distance=..6,tag=luigi,limit=1] run scoreboard players reset @s ActionTime

execute positioned ^ ^ ^-1 if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/stomp_on
execute at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=luigi,limit=1] run function luigis_mansion:entities/bowser/stomp_on