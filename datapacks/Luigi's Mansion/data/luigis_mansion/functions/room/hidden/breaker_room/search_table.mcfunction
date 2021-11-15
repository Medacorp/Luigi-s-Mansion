execute if block 694 2 60 minecraft:white_wool run setblock 694 2 60 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 694 2 60 minecraft:structure_block run setblock 694 2 59 minecraft:redstone_block
execute if block 704 2 60 minecraft:white_wool run setblock 704 2 60 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:breaker_room/table_vacuumed",rotation:"CLOCKWISE_180"}
execute if block 704 2 60 minecraft:structure_block run setblock 704 2 59 minecraft:redstone_block
execute positioned 695 2 60.0 run function luigis_mansion:blocks/dust
scoreboard players set #breaker_room_table Searched 1
tag @e[x=695.5,y=2,z=60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
tag @e[x=695.5,y=2,z=60.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn