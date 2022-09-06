scoreboard players add #billiards_room_fan HomeRot 1
scoreboard players operation #billiards_room_fan HomeRot += #billiards_room_fan Searching
execute if score #billiards_room_fan HomeRot matches 360.. run scoreboard players remove #billiards_room_fan HomeRot 360
execute if score #billiards_room_fan HomeRot matches 0..89 run place template luigis_mansion:fan 677 15 -59 none left_right
execute if score #billiards_room_fan HomeRot matches 90..179 run place template luigis_mansion:fan 684 15 -59 counterclockwise_90 left_right
execute if score #billiards_room_fan HomeRot matches 180..269 run place template luigis_mansion:fan 684 15 -66 180 left_right
execute if score #billiards_room_fan HomeRot matches 270..359 run place template luigis_mansion:fan 677 15 -66 clockwise_90 left_right

execute if score #billiards_room_fan HomeRot matches 0..89 run place template luigis_mansion:fan 671 15 -59 180
execute if score #billiards_room_fan HomeRot matches 90..179 run place template luigis_mansion:fan 664 15 -59 counterclockwise_90
execute if score #billiards_room_fan HomeRot matches 180..269 run place template luigis_mansion:fan 664 15 -66
execute if score #billiards_room_fan HomeRot matches 270..359 run place template luigis_mansion:fan 671 15 -66 clockwise_90