execute if block 719 20 -7 minecraft:white_wool run setblock 719 20 -7 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:parlor/table_vacuumed",mirror:"LEFT_RIGHT"}
execute if block 719 20 -7 minecraft:structure_block run setblock 719 20 -8 minecraft:redstone_block
execute positioned 721.0 20 -8 run function luigis_mansion:blocks/dust
scoreboard players set #parlor_table_3 Searched 1
tag @e[x=721.5,y=20,z=-7.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=721.5,y=20,z=-7.5,distance=..0.7,tag=ghost,tag=hidden] add spawn