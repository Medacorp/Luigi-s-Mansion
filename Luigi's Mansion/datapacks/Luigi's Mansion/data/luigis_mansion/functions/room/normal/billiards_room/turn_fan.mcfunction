scoreboard players add #billiards_room_fan HomeRot 1
scoreboard players operation #billiards_room_fan HomeRot += #billiards_room_fan Searching
execute if score #billiards_room_fan HomeRot matches 360.. run scoreboard players remove #billiards_room_fan HomeRot 360
execute if score #billiards_room_fan HomeRot matches 0..89 run place template luigis_mansion:fan 677 15 74
execute if score #billiards_room_fan HomeRot matches 90..179 run place template luigis_mansion:fan 684 15 74 clockwise_90
execute if score #billiards_room_fan HomeRot matches 180..269 run place template luigis_mansion:fan 684 15 81 180
execute if score #billiards_room_fan HomeRot matches 270..359 run place template luigis_mansion:fan 677 15 81 counterclockwise_90

execute if score #billiards_room_fan HomeRot matches 0..89 run place template luigis_mansion:fan 671 15 74 none front_back
execute if score #billiards_room_fan HomeRot matches 90..179 run place template luigis_mansion:fan 664 15 74 counterclockwise_90 front_back
execute if score #billiards_room_fan HomeRot matches 180..269 run place template luigis_mansion:fan 664 15 81 180 front_back
execute if score #billiards_room_fan HomeRot matches 270..359 run place template luigis_mansion:fan 671 15 81 clockwise_90 front_back