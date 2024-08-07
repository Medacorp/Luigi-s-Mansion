execute unless score #chauncey_battle Ticking matches 1 run function #luigis_mansion:room/hidden/chauncey_battle/load
execute as @a[x=782,y=5,z=-69,dx=41,dy=34,dz=41] run scoreboard players set @s LastRoom 73
scoreboard players set @a[x=782,y=5,z=-69,dx=41,dy=34,dz=41] Room 73
#todelete - old furniture
scoreboard players set #temp Room 73
#/todelete

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey{health:0} run scoreboard players add #chauncey_battle ReturnTimer 1
execute if score #chauncey_battle ReturnTimer matches 100.. as @a[scores={Room=73}] run function luigis_mansion:room/hidden/chauncey_battle/clear_nursery

execute as @a[scores={Room=73}] run function luigis_mansion:room/hidden/chauncey_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:0b} as @a unless entity @s[scores={Room=73}] run function luigis_mansion:room/hidden/chauncey_battle/warp_to

execute if entity @a[tag=!pause_dialog,scores={Room=73},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/chauncey_battle/ghosts

execute as @e[x=792,y=16,z=-56,dx=2,dy=15,dz=15,tag=ball,tag=!spit,y_rotation=0..-180] at @s run teleport @s ~ ~ ~ ~-180 ~