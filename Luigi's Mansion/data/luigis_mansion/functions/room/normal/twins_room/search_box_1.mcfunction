execute unless score #twins_room_box_1 Searched matches 1 if entity @e[x=711.5,y=111,z=34.5,distance=..0.7,tag=ghost_marker] positioned 711 111 34 run function luigis_mansion:room/normal/twins_room/right_box
execute unless score #twins_room_box_1 Searched matches 1 unless entity @e[x=711.5,y=111,z=34.5,distance=..0.7,tag=ghost_marker] unless score #temp Time matches 1 positioned 711 111 34 run function luigis_mansion:room/normal/twins_room/wrong_box
scoreboard players set #twins_room_box_1 Searched 1
