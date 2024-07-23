execute unless score #mirror_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:21,tags:["drop_loot"]}
execute unless score #mirror_room_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p15
execute unless data storage luigis_mansion:data furniture.loot positioned 741 15 -57 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 729 15 -57 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 741 14 -57 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #mirror_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture