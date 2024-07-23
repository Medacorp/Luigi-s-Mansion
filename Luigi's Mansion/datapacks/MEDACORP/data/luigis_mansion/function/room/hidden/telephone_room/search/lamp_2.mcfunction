execute unless score #telephone_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_lamp_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 744 34 6 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 33 6 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture