execute unless score #boolossus_battle Ticking matches 1 run function #luigis_mansion:room/normal/boolossus_battle/load
execute as @a[x=562,y=14,z=-63,dx=48,dy=78,dz=87] run scoreboard players set @s LastRoom 75
scoreboard players set @e[x=562,y=14,z=-63,dx=48,dy=78,dz=87] Room 75
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 75
#/todelete

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run scoreboard players add #boolossus_battle ReturnTimer 1
execute if score #boolossus_battle ReturnTimer matches 100.. as @a[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2

execute as @a[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:0b} as @a unless entity @s[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/warp_to

execute if entity @a[tag=!pause_dialog,scores={Room=75},tag=!spectator,limit=1] run function luigis_mansion:room/normal/boolossus_battle/ghosts