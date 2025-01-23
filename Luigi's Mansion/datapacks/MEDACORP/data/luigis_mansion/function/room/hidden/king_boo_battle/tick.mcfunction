execute unless score #king_boo_battle Ticking matches 1 run function #luigis_mansion:room/hidden/king_boo_battle/load
execute as @e[tag=player,x=465,y=24,z=-40,dx=49,dy=61,dz=85] run scoreboard players set @s LastRoom 76
scoreboard players set @e[tag=player,x=465,y=24,z=-40,dx=49,dy=61,dz=85] Room 76
#todelete - old furniture
scoreboard players set #temp Room 76
#/todelete

execute as @a[scores={Room=76}] run function luigis_mansion:room/hidden/king_boo_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} as @a unless entity @s[scores={Room=76}] run function luigis_mansion:room/hidden/king_boo_battle/warp_to

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=76},limit=1] run function luigis_mansion:room/hidden/king_boo_battle/ghosts