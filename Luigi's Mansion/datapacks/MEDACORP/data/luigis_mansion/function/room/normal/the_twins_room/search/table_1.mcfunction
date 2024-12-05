execute unless score #the_twins_room_table_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:49,tags:["drop_loot"]}
execute unless score #the_twins_room_table_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_cabinet_mounted_globe"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"the_twins_room_cabinet_mounted_globe",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #the_twins_room_table_1 Searched matches 1 as @e[tag=luigi] if score #the_twins_room_table_1 SearcherID = @s ID run tag @s add searcher
execute unless score #the_twins_room_table_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #the_twins_room_table_1 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 738 20 48.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 738 21 48.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #the_twins_room_table_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=738.5,y=20,z=48.5,distance=..0.7,tag=ghost,tag=hidden] add spawn