execute if score #hidden_room_hole Searched matches 1 run particle minecraft:dust{color:8355839,scale:1f} 741 11 -31 0.2 0.2 0.2 0 4
execute if score #hidden_room_hole Searched matches 1 run particle minecraft:dust{color:8355839,scale:1f} 757 11 -31 0.2 0.2 0.2 0 4
execute if score #hidden_room_hole Searched matches 1 unless score #hidden_room_hole Sound matches 1.. run playsound luigis_mansion:furniture.wind_warp ambient @a[scores={Room=24}] 741 11 -31
execute if score #hidden_room_hole Searched matches 1 unless score #hidden_room_hole Sound matches 1.. run scoreboard players set #hidden_room_hole Sound 24
execute if score #hidden_room_hole Searched matches 1 if score #hidden_room_hole Sound matches 1.. run scoreboard players remove #hidden_room_hole Sound 1
execute if score #hidden_room_hole Searched matches 1 as @e[tag=luigi,x=741.5,y=11,z=-30.5,distance=..0.7] run function luigis_mansion:room/hidden/hidden_room/go_through_hole