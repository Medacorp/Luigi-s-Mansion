execute unless score #telephone_room_shelf_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_shelf_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p15
execute unless data storage luigis_mansion:data furniture.loot positioned 741 32 33 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 741 32 32 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_shelf_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=741.5,y=32,z=33.5,distance=..0.7,tag=ghost,tag=hidden] add spawn