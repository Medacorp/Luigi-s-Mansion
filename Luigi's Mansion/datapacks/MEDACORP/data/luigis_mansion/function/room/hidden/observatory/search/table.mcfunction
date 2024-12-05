execute unless score #observatory_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:46,tags:["drop_loot"]}
execute unless score #observatory_table Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["observatory_cabinet_mounted_planet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"observatory_cabinet_mounted_planet",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #observatory_table Searched matches 1 as @e[tag=luigi] if score #observatory_table SearcherID = @s ID run tag @s add searcher
execute unless score #observatory_table Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #observatory_table Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 641 20 91.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 641 21 91.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #observatory_table Searched 1
data remove storage luigis_mansion:data furniture