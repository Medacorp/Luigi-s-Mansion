execute unless score #hallway_19 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_19/load
execute as @e[tag=player,x=740,y=28,z=40,dx=23,dy=7,dz=8] unless entity @s[scores={Room=55}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=740,y=28,z=40,dx=23,dy=7,dz=8] Room 55

execute as @a[scores={Room=55}] run function luigis_mansion:room/normal/hallway_19/tick_per_player

stopsound @a[scores={Room=55,RoomNoise=0}] ambient luigis_mansion:block.telephone.ring
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run playsound luigis_mansion:furniture.telephone.ring ambient @a[scores={Room=55,RoomNoise=0}] 752 29 41 1
execute unless data storage luigis_mansion:data dialogs[{room:56}] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{telephone_3:1b} run scoreboard players set @a[scores={Room=55,RoomNoise=0}] RoomNoise 40

scoreboard players set #temp Room 55
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_19/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room