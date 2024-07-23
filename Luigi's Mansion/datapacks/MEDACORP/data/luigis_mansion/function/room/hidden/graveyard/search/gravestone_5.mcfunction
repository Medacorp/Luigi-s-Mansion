execute unless score #graveyard_gravestone_5 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:29,tags:["drop_loot"]}
execute unless score #graveyard_gravestone_5 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 660.0 103 -29.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 660.0 104.5 -29.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #graveyard_gravestone_5 Searched 1
data remove storage luigis_mansion:data furniture