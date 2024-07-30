execute unless score #astral_hall_table_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:45,tags:["drop_loot"]}
execute unless score #astral_hall_table_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["astral_hall_astral_cabinet_1"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"astral_hall_astral_cabinet_1",contents:{luigis_mansion:{gold_coin:10}}}
execute unless score #astral_hall_table_1 Searched matches 1 as @a if score #astral_hall_table_1 SearcherID = @s ID run tag @s add searcher
execute unless score #astral_hall_table_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #astral_hall_table_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 662 20 90 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 663 21 90 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #astral_hall_table_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=662.5,y=20,z=90.5,distance=..0.7,tag=ghost,tag=hidden] add spawn