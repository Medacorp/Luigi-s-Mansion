execute unless score #roof_pillar_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:63,tags:["drop_loot"]}
execute unless score #roof_pillar_2 Searched matches 1 as @e[tag=luigi] if score #roof_pillar_2 SearcherID = @s ID run tag @s add searcher
execute unless score #roof_pillar_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #roof_pillar_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 702 132 41 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 704 132 41 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #roof_pillar_2 Searched 1
data remove storage luigis_mansion:data furniture