execute unless score #parlor_table_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:3,tags:["drop_loot"]}
execute unless score #parlor_table_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_bookcase"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"parlor_bookcase",contents:{luigis_mansion:{gold_coin:10,bill:10}}}
execute unless score #parlor_table_2 Searched matches 1 as @a if score #parlor_table_2 SearcherID = @s ID run tag @s add searcher
execute unless score #parlor_table_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #parlor_table_2 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 714 20 28.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 715 20 28.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #parlor_table_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=714.5,y=20,z=27.5,distance=..0.7,tag=ghost,tag=hidden] add spawn