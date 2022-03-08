execute if block 704 11 89 minecraft:white_wool run setblock 704 11 89 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/table_vacuumed"}
execute if block 704 11 89 minecraft:structure_block run setblock 704 12 89 minecraft:redstone_block
scoreboard players set #kitchen_vacuumable Searched 1
tag @e[x=705.5,y=11,z=89.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn