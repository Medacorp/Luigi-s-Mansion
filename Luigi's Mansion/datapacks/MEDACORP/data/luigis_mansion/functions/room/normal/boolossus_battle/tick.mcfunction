execute unless score #boolossus_battle Ticking matches 1 run function #luigis_mansion:room/normal/boolossus_battle/load
execute as @a[gamemode=!spectator,x=562,y=13,z=-63,dx=48,dy=78,dz=87] run scoreboard players set @s LastRoom 75
execute as @e[x=562,y=13,z=-63,dx=48,dy=78,dz=87] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 75
scoreboard players set #temp Room 75

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run scoreboard players add #boolossus_battle ReturnTimer 1
execute if score #boolossus_battle ReturnTimer matches 100.. as @a[gamemode=!spectator,scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2

execute as @a[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:0b} as @a unless entity @s[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/warp_to

scoreboard players set #temp Room 75
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/normal/boolossus_battle/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room