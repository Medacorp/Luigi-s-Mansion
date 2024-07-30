execute unless score #storage_room_lamp_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:18,tags:["drop_loot"]}
execute unless score #storage_room_lamp_3 Searched matches 1 as @a if score #storage_room_lamp_3 SearcherID = @s ID run tag @s add searcher
execute unless score #storage_room_lamp_3 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_2
execute unless score #storage_room_lamp_3 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 685 16 -60 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 675 16 -60 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 685 15 -60 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #storage_room_lamp_3 Searched 1
data remove storage luigis_mansion:data furniture