execute unless score #ball_room_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:17,tags:["drop_loot"]}
execute unless score #ball_room_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["ball_room_bejeweled_chandelier_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"ball_room_bejeweled_chandelier_2",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #ball_room_lamp_2 Searched matches 1 as @e[tag=luigi] if score #ball_room_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #ball_room_lamp_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #ball_room_lamp_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 704.0 15 76.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 704.0 14 76.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #ball_room_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture