execute unless score #hallway_19 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_19/load
execute as @a[gamemode=!spectator,x=740,y=26,z=40,dx=23,dy=9,dz=8] unless entity @s[scores={Room=55}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=740,y=26,z=40,dx=23,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 55
scoreboard players set #temp Room 55
tag @e[tag=ghost,scores={Room=55}] add no_hidden_move

execute as @a[scores={Room=55}] run function 3ds_remake:room/hidden/hallway_19/tick_per_player

function #3ds_remake:room/hidden/hallway_19/interactions/room

stopsound @a[scores={Room=55,RoomNoise=0}] ambient luigis_mansion:block.telephone.ring
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=55,RoomNoise=0}] 752 29 41 1
execute unless entity @a[tag=toad_5_dialog,limit=1] unless entity @a[tag=uncle_grimmly_dialog,limit=1] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=55,RoomNoise=0}] RoomNoise 40

scoreboard players set #temp Room 55
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_19/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room