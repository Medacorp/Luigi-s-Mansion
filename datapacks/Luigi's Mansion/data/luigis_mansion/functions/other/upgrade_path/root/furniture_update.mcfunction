execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4}
execute in minecraft:overworld run forceload add 0 0
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].used_keys merge value {parlor:1b}
scoreboard objectives remove Attack