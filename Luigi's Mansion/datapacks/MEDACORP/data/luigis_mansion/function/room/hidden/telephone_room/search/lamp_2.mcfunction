execute unless score #telephone_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_lamp_2 Searched matches 1 as @a if score #telephone_room_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #telephone_room_lamp_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_4
execute unless score #telephone_room_lamp_2 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 744 34 6 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 33 6 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture