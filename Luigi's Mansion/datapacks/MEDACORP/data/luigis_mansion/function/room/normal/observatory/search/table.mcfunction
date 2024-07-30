execute unless score #anteroom_lamp_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:46,tags:["drop_loot"]}
execute unless score #anteroom_lamp_1 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["observatory_cabinet_mounted_planet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"observatory_cabinet_mounted_planet",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #anteroom_lamp_1 Searched matches 1 as @a if score #anteroom_lamp_1 SearcherID = @s ID run tag @s add searcher
execute unless score #anteroom_lamp_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #anteroom_lamp_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 641 20 -75.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 641 21 -75.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #anteroom_lamp_1 Searched 1
data remove storage luigis_mansion:data furniture