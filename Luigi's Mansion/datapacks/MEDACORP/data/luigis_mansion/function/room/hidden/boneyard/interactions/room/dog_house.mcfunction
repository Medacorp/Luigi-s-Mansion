execute if data storage luigis_mansion:data current_state.current_data.rooms.boneyard{cleared:1b} run particle minecraft:crit 674 103 -38 0.6 0.6 0.6 0 1
execute if score #boneyard_dog_house Searched matches 1 unless score #boneyard_dog_house Sound matches 1.. run playsound luigis_mansion:furniture.wind_warp ambient @a[scores={Room=28}] 674 103 -38
execute if score #boneyard_dog_house Searched matches 1 unless score #boneyard_dog_house Sound matches 1.. run scoreboard players set #boneyard_dog_house Sound 24
execute if score #boneyard_dog_house Searched matches 1 if score #boneyard_dog_house Sound matches 1.. run scoreboard players remove #boneyard_dog_house Sound 1
execute if score #boneyard_dog_house Searched matches 1 run particle minecraft:dust{color:[0.5f,0.5f,1f],scale:1f} 674 102 -38 0.2 0.2 0.2 0 4
execute if score #boneyard_dog_house Searched matches 1 as @e[x=674.5,y=102,z=-37.5,distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if score #boneyard_dog_house Searched matches 1 as @a[x=674.5,y=102,z=-37.5,distance=..0.7] run function luigis_mansion:room/hidden/boneyard/go_through_dog_house