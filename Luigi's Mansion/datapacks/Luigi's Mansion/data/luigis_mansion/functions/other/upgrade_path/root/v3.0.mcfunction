execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4,memory:[],unique_id:{dancing_ghost_guy_couple:0,ghost:0,passive:0}}
execute if data storage luigis_mansion:data luigi_colors[-1] run function luigis_mansion:other/upgrade_path/root/convert_color_to_memory
execute if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:other/upgrade_path/root/convert_inventory_to_memory
data modify storage luigis_mansion:data unique_id.ghost set from storage luigis_mansion:data ghost_nr
data modify storage luigis_mansion:data unique_id.passive set from storage luigis_mansion:data passive_nr
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
data remove storage luigis_mansion:data ghost_nr
data remove storage luigis_mansion:data passive_nr
scoreboard objectives remove Attack
scoreboard objectives remove ForcedDamage
scoreboard objectives add ClearInventory dummy
scoreboard objectives add PoltergustTime dummy
scoreboard players set * ClearInventory 1
scoreboard players set * PoltergustTime 0
scoreboard players operation #heart_money_count Selected = #heart_coin_count Selected
scoreboard players reset #heart_coin_count Selected