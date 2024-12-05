execute if data storage luigis_mansion:data current_state.current_data.rooms.boneyard{cleared:1b} run particle minecraft:crit 674 103 53 0.6 0.6 0.6 0 1
execute if score #boneyard_dog_house Searched matches 1 unless score #boneyard_dog_house Sound matches 1.. run playsound luigis_mansion:furniture.wind_warp ambient @a[scores={Room=28}] 674 103 53
execute if score #boneyard_dog_house Searched matches 1 unless score #boneyard_dog_house Sound matches 1.. run scoreboard players set #boneyard_dog_house Sound 24
execute if score #boneyard_dog_house Searched matches 1 if score #boneyard_dog_house Sound matches 1.. run scoreboard players remove #boneyard_dog_house Sound 1
execute if score #boneyard_dog_house Searched matches 1 run particle minecraft:dust{color:8355839,scale:1f} 674 102 53 0.2 0.2 0.2 0 4
execute if score #boneyard_dog_house Searched matches 1 as @e[tag=luigi,x=674.5,y=102,z=53.5,distance=..0.7] run function luigis_mansion:room/normal/boneyard/go_through_dog_house