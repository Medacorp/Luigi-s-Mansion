execute unless score #the_twins_room_box_1 Searched matches 1 positioned 742 20 46 if entity @e[distance=..0.7,tag=ghost,tag=hidden] run function luigis_mansion:room/normal/the_twins_room/right_box
execute unless score #the_twins_room_box_1 Searched matches 1 positioned 742 20 46 unless entity @e[distance=..0.7,tag=ghost,tag=hidden] unless score #temp Time matches 1 run function luigis_mansion:room/normal/the_twins_room/wrong_box
scoreboard players set #the_twins_room_box_1 Searched 1
