scoreboard players add #the_twins_room_mobile HomeRot 0
execute if score #the_twins_room_mobile Searching matches 1.. run scoreboard players add #the_twins_room_mobile HomeRot 5
execute if score #the_twins_room_mobile HomeRot matches 360.. run scoreboard players remove #the_twins_room_mobile HomeRot 360
execute if score #the_twins_room_mobile HomeRot matches 0..89 run place template luigis_mansion:the_twins_room/mobile 744 24 34
execute if score #the_twins_room_mobile HomeRot matches 90..179 run place template luigis_mansion:the_twins_room/mobile 746 24 34 clockwise_90
execute if score #the_twins_room_mobile HomeRot matches 180..269 run place template luigis_mansion:the_twins_room/mobile 746 24 36 180
execute if score #the_twins_room_mobile HomeRot matches 270..359 run place template luigis_mansion:the_twins_room/mobile 744 24 36 counterclockwise_90