execute if block 741 20 46 minecraft:white_wool run setblock 741 20 46 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:sitting_room/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 741 20 46 minecraft:structure_block run setblock 741 20 45 minecraft:redstone_block
scoreboard players set #sitting_room_vacuumable Searched 1
tag @e[x=742.5,y=20,z=44.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn