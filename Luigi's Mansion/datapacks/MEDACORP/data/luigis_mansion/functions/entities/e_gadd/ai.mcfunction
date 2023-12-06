function #luigis_mansion:entities/e_gadd/dialog
execute if entity @s[scores={Room=-1},tag=talk] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/underground_lab
execute if entity @s[scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:0b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/ghost_portrificationizer_room/talk
execute if entity @s[scores={Room=-3},tag=talk] if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:1b} unless entity @s[scores={Dialog=1..}] run function luigis_mansion:dialog/ghost_portrificationizer_room/repeat

execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s[tag=!portrificationizing,tag=!mario_to_normal,scores={Room=..-1}] ~ ~ ~ ~ ~