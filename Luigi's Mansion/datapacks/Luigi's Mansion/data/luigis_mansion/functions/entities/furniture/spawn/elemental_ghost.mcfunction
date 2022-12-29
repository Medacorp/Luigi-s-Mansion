summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureElemenU
scoreboard players operation #temp2 Time = @s FurnitureElemenF
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute positioned as @e[tag=location,limit=1] if entity @s[tag=fire_elemental_source] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{fire_element_medal:1b} run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost
execute positioned as @e[tag=location,limit=1] if entity @s[tag=water_elemental_source] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{water_element_medal:1b} run function luigis_mansion:spawn_entities/ghost/water_elemental_ghost
execute positioned as @e[tag=location,limit=1] if entity @s[tag=ice_elemental_source] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{ice_element_medal:1b} run function luigis_mansion:spawn_entities/ghost/ice_elemental_ghost
kill @e[tag=location,limit=1]