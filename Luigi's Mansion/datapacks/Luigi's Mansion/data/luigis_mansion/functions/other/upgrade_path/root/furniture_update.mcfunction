execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4,memory:[]}
execute if data storage luigis_mansion:data luigi_colors[-1] run function luigis_mansion:other/upgrade_path/root/convert_color_to_memory
execute if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:other/upgrade_path/root/convert_inventory_to_memory
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].used_keys merge value {parlor:1b}
data remove storage luigis_mansion:data luigi_colors
data remove storage luigis_mansion:data inventories
data remove storage luigis_mansion:data obtained_parlor_key
data remove storage luigis_mansion:data used_parlor_key
scoreboard objectives remove Attack
scoreboard objectives remove ForcedDamage
scoreboard players operation #heart_money_count Selected = #heart_coin_count Selected
scoreboard players reset #heart_coin_count Selected