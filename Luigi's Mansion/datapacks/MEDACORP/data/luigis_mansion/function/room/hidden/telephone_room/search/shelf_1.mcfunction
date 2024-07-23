execute unless score #telephone_room_shelf_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_shelf_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 741 32 -18 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 741 32 -17 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_shelf_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=741.5,y=32,z=-17.5,distance=..0.7,tag=ghost,tag=hidden] add spawn