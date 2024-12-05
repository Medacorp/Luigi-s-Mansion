execute unless score #balcony_2_plant_8 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:53,tags:["drop_loot"]}
execute unless score #balcony_2_plant_8 Searched matches 1 as @e[tag=luigi] if score #balcony_2_plant_8 SearcherID = @s ID run tag @s add searcher
execute unless score #balcony_2_plant_8 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #balcony_2_plant_8 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 655 120 11 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 655 121 11 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_2_plant_8 Searched 1
data remove storage luigis_mansion:data furniture