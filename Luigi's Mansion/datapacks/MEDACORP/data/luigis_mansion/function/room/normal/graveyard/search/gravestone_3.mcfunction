execute unless score #graveyard_gravestone_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:29,tags:["drop_loot"]}
execute unless score #graveyard_gravestone_3 Searched matches 1 as @e[tag=luigi] if score #graveyard_gravestone_3 SearcherID = @s ID run tag @s add searcher
execute unless score #graveyard_gravestone_3 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #graveyard_gravestone_3 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 665.0 103 50.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 665.0 104 50.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #graveyard_gravestone_3 Searched 1
data remove storage luigis_mansion:data furniture