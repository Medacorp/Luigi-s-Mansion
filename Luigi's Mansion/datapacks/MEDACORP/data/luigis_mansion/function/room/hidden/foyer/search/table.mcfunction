execute unless score #foyer_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:1,tags:["drop_loot"]}
execute unless score #foyer_table Searched matches 1 as @a if score #foyer_table SearcherID = @s ID run tag @s add searcher
execute unless score #foyer_table Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h70_b10
execute unless score #foyer_table Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 746 11 2 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 746 13 2 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #foyer_table Searched 1
data remove storage luigis_mansion:data furniture