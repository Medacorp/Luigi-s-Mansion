execute unless score #balcony_2_statue_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:53,tags:["drop_loot"]}
execute unless score #balcony_2_statue_1 Searched matches 1 as @e[tag=luigi] if score #balcony_2_statue_1 SearcherID = @s ID run tag @s add searcher
execute unless score #balcony_2_statue_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #balcony_2_statue_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 668 121 27 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 668 123 23 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_2_statue_1 Searched 1
data remove storage luigis_mansion:data furniture