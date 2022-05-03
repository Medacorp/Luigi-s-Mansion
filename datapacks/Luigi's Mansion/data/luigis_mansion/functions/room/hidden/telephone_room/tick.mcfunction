execute unless score #telephone_room Ticking matches 1 run function #luigis_mansion:room/hidden/telephone_room/load
execute as @a[gamemode=!spectator,x=736,y=28,z=-20,dx=24,dy=8,dz=35] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=28,z=-20,dx=24,dy=8,dz=35] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 56
scoreboard players set #temp Room 56

execute as @a[gamemode=!spectator,scores={Room=56}] run function luigis_mansion:room/hidden/telephone_room/tick_per_player

function #luigis_mansion:room/hidden/telephone_room/interactions/room

execute unless entity @a[tag=toad_5_dialog,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=-1.5,distance=..0.7,limit=1] add toad_5_dialog
execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=-11.5,distance=..0.7,limit=1] add toad_5_dialog
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @a[gamemode=!spectator,x=751.5,y=29,z=7.5,distance=..0.7,limit=1] add uncle_grimmly_dialog

execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} positioned 750.5 30 -1.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} positioned 750.5 30 -11.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} positioned 750.5 30 7.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=56,RoomNoise=0}] RoomNoise 40

execute if entity @a[gamemode=!spectator,scores={Room=56}] run function luigis_mansion:room/hidden/telephone_room/ghosts