scoreboard players operation #temp ElementalNr = @s ElementalNr
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"elemental_ghost"}}}]}] if score @s ElementalNr = #temp ElementalNr run tag @s add this_elemental_ghost

execute if entity @s[tag=fire,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{fire_element_medal:1b} run function luigis_mansion:entities/elemental_source/fire_tick
execute if entity @s[tag=water,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{water_element_medal:1b} run function luigis_mansion:entities/elemental_source/water_tick
execute if entity @s[tag=ice,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{ice_element_medal:1b} run function luigis_mansion:entities/elemental_source/ice_tick

scoreboard players reset #temp ElementalNr
tag @e remove this_elemental_ghost