$execute unless data storage luigis_mansion:data current_state.current_data.technical_data{$(burning):1b} run tag @s add burning
$execute unless data storage luigis_mansion:data current_state.current_data.technical_data{$(burning):1b} run tag @s add affected_by_water
$execute unless data storage luigis_mansion:data current_state.current_data.technical_data{$(burning):1b} run tag @s add searchable_by_water
$execute unless data storage luigis_mansion:data current_state.current_data.technical_data{$(burning):1b} run data modify entity @s ArmorItems[3].tag.burning_flag set value $(burning)