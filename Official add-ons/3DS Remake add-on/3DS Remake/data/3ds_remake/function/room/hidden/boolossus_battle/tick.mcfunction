execute unless score #boolossus_battle Ticking matches 1 run function #3ds_remake:room/hidden/boolossus_battle/load
execute as @e[tag=player,x=562,y=14,z=-63,dx=48,dy=78,dz=87] run scoreboard players set @s LastRoom 75
scoreboard players set @e[tag=player,x=562,y=14,z=-63,dx=48,dy=78,dz=87] Room 75
#todelete - old furniture
scoreboard players set #temp Room 75
#/todelete

execute as @a[scores={Room=75}] run function 3ds_remake:room/hidden/boolossus_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:0b} as @a unless entity @s[scores={Room=75}] run function 3ds_remake:room/hidden/boolossus_battle/warp_to

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=75},limit=1] run function 3ds_remake:room/hidden/boolossus_battle/ghosts