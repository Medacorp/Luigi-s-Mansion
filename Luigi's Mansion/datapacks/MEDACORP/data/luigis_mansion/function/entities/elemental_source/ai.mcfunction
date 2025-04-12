scoreboard players operation #entity ElementalNr = @s ElementalNr
execute as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"elemental_ghost"}}}] if score @s ElementalNr = #entity ElementalNr run tag @s add this_elemental_ghost

execute if entity @s[tag=fire,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{fire_element_medal:1b} run function luigis_mansion:entities/elemental_source/ai/fire
execute if entity @s[tag=water,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{water_element_medal:1b} run function luigis_mansion:entities/elemental_source/ai/water
execute if entity @s[tag=ice,tag=enabled] unless entity @e[tag=this_elemental_ghost,limit=1] if data storage luigis_mansion:data current_state.current_data.obtained_items{ice_element_medal:1b} run function luigis_mansion:entities/elemental_source/ai/ice

scoreboard players reset #entity ElementalNr
tag @e remove this_elemental_ghost