execute unless score #balcony_2_statue_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:53,tags:["drop_loot"]}
execute unless score #balcony_2_statue_2 Searched matches 1 as @a if score #balcony_2_statue_2 SearcherID = @s ID run tag @s add searcher
execute unless score #balcony_2_statue_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_2
execute unless score #balcony_2_statue_2 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 668 121 -12 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 668 123 -8 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_2_statue_2 Searched 1
data remove storage luigis_mansion:data furniture