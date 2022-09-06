scoreboard players add #bed_room_1_fan HomeRot 1
scoreboard players operation #bed_room_1_fan HomeRot += #bed_room_1_fan Searching
execute if score #bed_room_1_fan HomeRot matches 360.. run scoreboard players remove #bed_room_1_fan HomeRot 360
execute if score #bed_room_1_fan HomeRot matches 0..89 run place template luigis_mansion:fan 687 115 43
execute if score #bed_room_1_fan HomeRot matches 90..179 run place template luigis_mansion:fan 694 115 43 clockwise_90
execute if score #bed_room_1_fan HomeRot matches 180..269 run place template luigis_mansion:fan 694 115 50 180
execute if score #bed_room_1_fan HomeRot matches 270..359 run place template luigis_mansion:fan 687 115 50 counterclockwise_90