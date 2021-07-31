scoreboard players add #billiards_room_fan HomeRot 1
scoreboard players operation #billiards_room_fan HomeRot += #billiards_room_fan Searching
execute if score #billiards_room_fan HomeRot matches 360.. run scoreboard players remove #billiards_room_fan HomeRot 360
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 677 15 -59 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",mirror:"LEFT_RIGHT"}
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 677 16 -59 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 684 15 -59 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 684 16 -59 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 684 15 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180",mirror:"LEFT_RIGHT"}
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 684 16 -66 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 677 15 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 677 16 -66 minecraft:redstone_block

execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 671 15 -59 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_180"}
execute if score #billiards_room_fan HomeRot matches 0..89 run setblock 671 16 -59 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 664 15 -59 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"CLOCKWISE_90"}
execute if score #billiards_room_fan HomeRot matches 90..179 run setblock 664 16 -59 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 664 15 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan"}
execute if score #billiards_room_fan HomeRot matches 180..269 run setblock 664 16 -66 minecraft:redstone_block
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 671 15 -66 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:fan",rotation:"COUNTERCLOCKWISE_90"}
execute if score #billiards_room_fan HomeRot matches 270..359 run setblock 671 16 -66 minecraft:redstone_block