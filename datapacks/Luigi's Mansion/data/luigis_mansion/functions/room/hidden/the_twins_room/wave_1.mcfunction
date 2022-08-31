execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} positioned 739 22 -19 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 739 22 -19 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 739 22 -19 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"the_twins_room_speedy_spirit"}
scoreboard players set #the_twins_room Wave 1
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.orville{health:0} run function luigis_mansion:room/hidden/the_twins_room/wave_1_to_6
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.henry{health:0} run function luigis_mansion:room/hidden/the_twins_room/wave_1_to_6