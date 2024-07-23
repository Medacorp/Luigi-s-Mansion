execute unless score #billiards_room_chess_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:47,tags:["drop_loot"]}
execute unless score #billiards_room_chess_table Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h15
execute unless data storage luigis_mansion:data furniture.loot positioned 685 11 67 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 663 11 67 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 685 12 67 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #billiards_room_chess_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=685.5,y=11,z=67.5,distance=..0.7,tag=ghost,tag=hidden] add spawn