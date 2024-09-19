execute unless score #mirror_room_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:21,tags:["drop_loot"]}
execute unless score #mirror_room_lamp_1 Searched matches 1 as @a if score #mirror_room_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #mirror_room_lamp_1 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #mirror_room_lamp_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 741 15 -48 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 729 15 -48 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 741 14 -48 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #mirror_room_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture