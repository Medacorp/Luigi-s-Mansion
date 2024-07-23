execute unless score #tea_room_drawer_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:34,tags:["drop_loot"]}
execute unless score #tea_room_drawer_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h15
execute unless data storage luigis_mansion:data furniture.loot positioned 643 20 -31 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 643 21 -32 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #tea_room_drawer_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=643.5,y=20,z=-30.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=643.5,y=20,z=-30.5,distance=..0.7,tag=spawn] 643 20 -32