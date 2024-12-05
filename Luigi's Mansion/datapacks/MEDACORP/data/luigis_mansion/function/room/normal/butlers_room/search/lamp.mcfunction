execute unless score #butlers_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:23,tags:["drop_loot"]}
execute unless score #butlers_room_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_chain_suspended_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"butlers_room_chain_suspended_lamp",contents:{luigis_mansion:{bill:5}}}
execute unless score #butlers_room_lamp Searched matches 1 as @e[tag=luigi] if score #butlers_room_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #butlers_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #butlers_room_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 744 16 63 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 15 63 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #butlers_room_lamp Searched 1
data remove storage luigis_mansion:data furniture