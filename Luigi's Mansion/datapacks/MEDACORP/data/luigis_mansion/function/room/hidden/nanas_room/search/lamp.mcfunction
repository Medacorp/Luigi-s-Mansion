execute unless score #nanas_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:44,tags:["drop_loot"]}
execute unless score #nanas_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_tulip_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"nanas_room_tulip_chandelier",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #nanas_room_lamp Searched matches 1 as @e[tag=luigi] if score #nanas_room_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #nanas_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #nanas_room_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 658 24 30 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 658 23 30 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #nanas_room_lamp Searched 1
data remove storage luigis_mansion:data furniture