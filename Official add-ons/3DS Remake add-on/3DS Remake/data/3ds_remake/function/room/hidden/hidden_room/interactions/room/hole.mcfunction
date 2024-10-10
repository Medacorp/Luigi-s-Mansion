execute if score #hidden_room_hole Searched matches 1 run particle minecraft:dust{color:8421631,scale:1f} 741 11 46 0.2 0.2 0.2 0 4
execute if score #hidden_room_hole Searched matches 1 run particle minecraft:dust{color:8421631,scale:1f} 757 11 46 0.2 0.2 0.2 0 4
execute if score #hidden_room_hole Searched matches 1 unless score #hidden_room_hole Sound matches 1.. run playsound luigis_mansion:furniture.wind_warp ambient @a[scores={Room=24}] 641 11 46
execute if score #hidden_room_hole Searched matches 1 unless score #hidden_room_hole Sound matches 1.. run scoreboard players set #hidden_room_hole Sound 24
execute if score #hidden_room_hole Searched matches 1 if score #hidden_room_hole Sound matches 1.. run scoreboard players remove #hidden_room_hole Sound 1
execute if score #hidden_room_hole Searched matches 1 as @e[x=741.5,y=11,z=46.5,distance=..0.7,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if score #hidden_room_hole Searched matches 1 as @a[x=741.5,y=11,z=46.5,distance=..0.7] run function 3ds_remake:room/hidden/hidden_room/go_through_hole