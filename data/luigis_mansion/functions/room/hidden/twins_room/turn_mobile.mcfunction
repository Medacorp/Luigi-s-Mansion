scoreboard players add #twins_room_mobile HomeRot 0
execute if score #twins_room_mobile Searching matches 1.. run scoreboard players add #twins_room_mobile HomeRot 5
execute if score #twins_room_mobile HomeRot matches 360.. run scoreboard players remove #twins_room_mobile HomeRot 360
execute if score #twins_room_mobile HomeRot matches 0..89 run setblock 744 24 -19 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:twins_room/mobile",mirror:"LEFT_RIGHT"}
execute if score #twins_room_mobile HomeRot matches 0..89 run setblock 744 25 -19 minecraft:redstone_block
execute if score #twins_room_mobile HomeRot matches 90..179 run setblock 746 24 -19 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:twins_room/mobile",rotation:"COUNTERCLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #twins_room_mobile HomeRot matches 90..179 run setblock 746 25 -19 minecraft:redstone_block
execute if score #twins_room_mobile HomeRot matches 180..269 run setblock 746 24 -21 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:twins_room/mobile",rotation:"CLOCKWISE_180",mirror:"LEFT_RIGHT"}
execute if score #twins_room_mobile HomeRot matches 180..269 run setblock 746 25 -21 minecraft:redstone_block
execute if score #twins_room_mobile HomeRot matches 270..359 run setblock 744 24 -21 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:twins_room/mobile",rotation:"CLOCKWISE_90",mirror:"LEFT_RIGHT"}
execute if score #twins_room_mobile HomeRot matches 270..359 run setblock 744 25 -21 minecraft:redstone_block