execute unless score #king_boo_battle Ticking matches 1 run function #luigis_mansion:room/normal/king_boo_battle/load
execute as @e[tag=player,x=465,y=24,z=-40,dx=49,dy=61,dz=85] run scoreboard players set @s LastRoom 76
scoreboard players set @e[tag=player,x=465,y=24,z=-40,dx=49,dy=61,dz=85] Room 76
#todelete - old furniture
scoreboard players set #temp Room 76
#/todelete

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo{health:0} unless data storage luigis_mansion:data dialogs[0] run scoreboard players add #king_boo_battle ReturnTimer 1
execute if score #king_boo_battle ReturnTimer matches 100.. as @a[scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/clear_secret_altar

execute as @a[scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} as @a unless entity @s[scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/warp_to

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=76},limit=1] run function luigis_mansion:room/normal/king_boo_battle/ghosts