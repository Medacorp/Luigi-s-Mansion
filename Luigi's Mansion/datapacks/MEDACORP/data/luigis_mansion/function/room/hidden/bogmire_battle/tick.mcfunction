execute unless score #bogmire_battle Ticking matches 1 run function #luigis_mansion:room/hidden/bogmire_battle/load
execute as @e[tag=player,x=777,y=4,z=-14,dx=51,dy=38,dz=55] run scoreboard players set @s LastRoom 74
scoreboard players set @e[tag=player,x=777,y=4,z=-14,dx=51,dy=38,dz=55] Room 74
#todelete - old furniture
scoreboard players set #temp Room 74
#/todelete

execute as @a[scores={Room=74}] run function luigis_mansion:room/hidden/bogmire_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:0b} as @a unless entity @s[scores={Room=74}] run function luigis_mansion:room/hidden/bogmire_battle/warp_to

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=74},limit=1] run function luigis_mansion:room/hidden/bogmire_battle/ghosts