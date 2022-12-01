execute unless score #telephone_room Ticking matches 1 run function #luigis_mansion:room/normal/telephone_room/load
execute as @a[gamemode=!spectator,x=736,y=26,z=0,dx=24,dy=9,dz=35] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=26,z=0,dx=24,dy=9,dz=35] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 56
scoreboard players set #temp Room 56

execute as @a[gamemode=!spectator,scores={Room=56}] run function luigis_mansion:room/normal/telephone_room/tick_per_player

function #luigis_mansion:room/normal/telephone_room/interactions/room

execute unless entity @a[tag=toad_5_dialog,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=17.5,distance=..0.7,limit=1] add toad_5_dialog
execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=27.5,distance=..0.7,limit=1] add toad_5_dialog
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=8.5,distance=..0.7,limit=1] add uncle_grimmly_dialog

execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] 750.5 30 17.5 1
execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] 750.5 30 27.5 1
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] 750.5 30 8.5 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=56,RoomNoise=0}] RoomNoise 40

scoreboard players set #temp Room 56
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/telephone_room/ghosts
tag @a[tag=same_room] remove same_room