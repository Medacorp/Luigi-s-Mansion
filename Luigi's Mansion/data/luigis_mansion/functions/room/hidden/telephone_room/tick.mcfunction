execute unless score #telephone_room Ticking matches 1 run function #luigis_mansion:room/hidden/telephone_room/load
execute as @a[x=698,y=120,z=-10,dx=24,dy=6,dz=35] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=698,y=120,z=-10,dx=24,dy=6,dz=35] run scoreboard players set @s Room 44

execute as @a[gamemode=!spectator,x=700,y=120,z=-8,dx=20,dy=6,dz=31] run function luigis_mansion:room/hidden/telephone_room/tick_per_player

function #luigis_mansion:room/hidden/telephone_room/interactions/room

execute unless entity @a[tag=toad_5_dialog,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} run tag @a[x=713.5,y=120,z=8.5,distance=..0.7,tag=blackout,limit=1] add toad_5_dialog
execute unless entity @a[tag=toad_5_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} run tag @a[x=713.5,y=120,z=-1.5,distance=..0.7,tag=blackout,limit=1] add toad_5_dialog
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run tag @a[x=713.5,y=120,z=17.5,distance=..0.7,tag=blackout,limit=1] add uncle_grimmly_dialog

execute unless entity @a[tag=toad_5_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} positioned 712.5 121 8.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=44,HallwayNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] if entity @a[tag=blackout,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_1:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} positioned 712.5 121 -1.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=44,HallwayNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] if data storage luigis_mansion:data current_state.current_data.technical_data{telephone_2:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} positioned 712.5 121 17.5 run playsound luigis_mansion:block.telephone.ring ambient @a[scores={Room=44,HallwayNoise=0}] ~ ~ ~ 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if entity @a[tag=blackout,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=44,HallwayNoise=0}] HallwayNoise 40

function luigis_mansion:room/hidden/telephone_room/ghosts

function luigis_mansion:room/hidden/door/attic_hallway_2_telephone_room
function luigis_mansion:room/hidden/door/telephone_room_clockwork_room