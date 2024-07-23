execute unless score #butlers_room_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:23,tags:["drop_loot"]}
execute unless score #butlers_room_table Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 744.0 11 -47.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 12 -47 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #butlers_room_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=744.5,y=11,z=-47.5,distance=..0.7,tag=ghost,tag=hidden] add spawn