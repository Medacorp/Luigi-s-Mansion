scoreboard players add #billiards_room_fan HomeRot 1
scoreboard players operation #billiards_room_fan HomeRot += #billiards_room_fan Searching
execute if score #billiards_room_fan HomeRot matches 360.. run scoreboard players remove #billiards_room_fan HomeRot 360
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 677 15 74 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan"}
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 677 16 74 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 684 15 74 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90"}
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 684 16 74 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 684 15 81 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180"}
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 684 16 81 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 677 15 81 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90"}
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 677 16 81 minecraft:redstone_block

execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 671 15 74 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",mirror:"FRONT_BACK"}
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 671 16 74 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 664 15 74 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90",mirror:"FRONT_BACK"}
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 664 16 74 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 664 15 81 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180",mirror:"FRONT_BACK"}
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 664 16 81 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 671 15 81 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90",mirror:"FRONT_BACK"}
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 671 16 81 minecraft:redstone_block