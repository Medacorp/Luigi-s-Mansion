execute unless score #graveyard_gravestone_6 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:29,tags:["drop_loot"]}
execute unless score #graveyard_gravestone_6 Searched matches 1 as @e[tag=luigi] if score #graveyard_gravestone_6 SearcherID = @s ID run tag @s add searcher
execute unless score #graveyard_gravestone_6 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #graveyard_gravestone_6 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 667.0 103 44.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 667.0 103.5 44.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #graveyard_gravestone_6 Searched 1
data remove storage luigis_mansion:data furniture