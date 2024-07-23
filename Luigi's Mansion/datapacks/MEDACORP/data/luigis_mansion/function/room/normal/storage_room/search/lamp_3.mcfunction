execute unless score #storage_room_lamp_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:18,tags:["drop_loot"]}
execute unless score #storage_room_lamp_3 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h15
execute unless data storage luigis_mansion:data furniture.loot positioned 685 16 -60 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 675 16 -60 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 685 15 -60 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #storage_room_lamp_3 Searched 1
data remove storage luigis_mansion:data furniture