execute unless score #cellar_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:58,tags:["drop_loot"]}
execute unless score #cellar_lamp Searched matches 1 as @e[tag=luigi] if score #cellar_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #cellar_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #cellar_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 742 7 -55 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 742 6 -55 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cellar_lamp Searched 1
data remove storage luigis_mansion:data furniture