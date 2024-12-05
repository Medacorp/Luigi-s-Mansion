execute unless score #rec_room_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:32,tags:["drop_loot"]}
execute unless score #rec_room_table Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_workout_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"rec_room_workout_cabinet",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #rec_room_table Searched matches 1 as @e[tag=luigi] if score #rec_room_table SearcherID = @s ID run tag @s add searcher
execute unless score #rec_room_table Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #rec_room_table Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 639 11 -42.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 637 11 -42.0 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 639 12.5 -42.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #rec_room_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=639.5,y=11,z=-42.5,distance=..0.7,tag=ghost,tag=hidden] add spawn