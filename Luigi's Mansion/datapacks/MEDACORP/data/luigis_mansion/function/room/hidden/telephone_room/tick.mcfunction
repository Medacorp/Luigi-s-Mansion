execute unless score #telephone_room Ticking matches 1 run function #luigis_mansion:room/hidden/telephone_room/load
execute as @e[tag=player,x=736,y=28,z=-20,dx=24,dy=7,dz=35] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=736,y=28,z=-20,dx=24,dy=7,dz=35] Room 56
#todelete - old furniture
scoreboard players set #temp Room 56
#/todelete

execute as @a[scores={Room=56}] run function luigis_mansion:room/hidden/telephone_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/telephone_room/interactions/room
#/todelete

execute unless data storage luigis_mansion:data dialogs[{room:56}] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} as @e[tag=player,x=751.5,y=29,z=-1.5,distance=..0.7,limit=1] run function luigis_mansion:room/hidden/telephone_room/answer_phone_1
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} as @e[tag=player,x=751.5,y=29,z=-11.5,distance=..0.7,limit=1] run function luigis_mansion:room/hidden/telephone_room/answer_phone_2
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} if data storage luigis_mansion:data current_state.current_data{blackout:1b} as @e[tag=player,x=751.5,y=29,z=7.5,distance=..0.7,limit=1] run function luigis_mansion:room/hidden/telephone_room/answer_phone_3

execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} positioned 750.5 30 -1.5 run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} positioned 750.5 30 -11.5 run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} positioned 750.5 30 7.5 run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=56,RoomNoise=0}] ~ ~ ~ 1
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=56,RoomNoise=0}] RoomNoise 40

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=56},limit=1] run function luigis_mansion:room/hidden/telephone_room/ghosts