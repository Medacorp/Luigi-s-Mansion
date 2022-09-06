scoreboard players add #master_bedroom_fan HomeRot 1
scoreboard players operation #master_bedroom_fan HomeRot += #master_bedroom_fan Searching
execute if score #master_bedroom_fan HomeRot matches 360.. run scoreboard players remove #master_bedroom_fan HomeRot 360
execute if score #master_bedroom_fan HomeRot matches 0..89 run place template luigis_mansion:fan 687 115 -28 none left_right
execute if score #master_bedroom_fan HomeRot matches 90..179 run place template luigis_mansion:fan 694 115 -28 counterclockwise_90 left_right
execute if score #master_bedroom_fan HomeRot matches 180..269 run place template luigis_mansion:fan 694 115 -35 180 left_right
execute if score #master_bedroom_fan HomeRot matches 270..359 run place template luigis_mansion:fan 687 115 -35 clockwise_90 left_right