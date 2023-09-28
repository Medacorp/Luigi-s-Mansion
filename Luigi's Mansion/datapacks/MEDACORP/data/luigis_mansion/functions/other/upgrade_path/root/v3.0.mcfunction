execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4,memory:[],unique_id:{dancing_ghost_guy_couple:0,ghost:0,passive:0,elemental_source:0,reflection:0}}
execute if data storage luigis_mansion:data luigi_colors[-1] run function luigis_mansion:other/upgrade_path/root/convert_color_to_memory
execute if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:other/upgrade_path/root/convert_inventory_to_memory
data modify storage luigis_mansion:data unique_id.ghost set from storage luigis_mansion:data ghost_nr
data modify storage luigis_mansion:data unique_id.passive set from storage luigis_mansion:data passive_nr
data modify storage luigis_mansion:data unique_id.elemental_source set from storage luigis_mansion:data elemental_source_nr
data modify storage luigis_mansion:data unique_id.reflection set from storage luigis_mansion:data reflection_nr
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].used_keys merge value {parlor:1b}
data modify storage luigis_mansion:data ghosts_caught set from storage luigis_mansion:data current_state.ghosts_caught
function luigis_mansion:other/upgrade_path/change_up_ghost_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data new_ghosts_caught
data remove storage luigis_mansion:data ghosts_caught
data remove storage luigis_mansion:data new_ghosts_caught
data modify storage luigis_mansion:data ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
function luigis_mansion:other/upgrade_path/change_up_ghost_data
data modify storage luigis_mansion:data saved_state.ghosts_caught set from storage luigis_mansion:data new_ghosts_caught
data remove storage luigis_mansion:data ghosts_caught
data remove storage luigis_mansion:data new_ghosts_caught
data remove storage luigis_mansion:data luigi_colors
data remove storage luigis_mansion:data inventories
data remove storage luigis_mansion:data obtained_parlor_key
data remove storage luigis_mansion:data used_parlor_key
data remove storage luigis_mansion:data ghost_nr
data remove storage luigis_mansion:data passive_nr
data remove storage luigis_mansion:data elemental_source_nr
data remove storage luigis_mansion:data reflection_nr
scoreboard objectives add ClearInventory dummy
scoreboard players set * ClearInventory 1
scoreboard objectives remove AnimationProg
scoreboard objectives remove Attack
scoreboard objectives remove EGaddGallChoice
scoreboard objectives remove EGaddGPRChoice
scoreboard objectives remove EGaddLabChoice
scoreboard objectives remove EGaddTrainChoice
scoreboard objectives remove EntitySizeW
scoreboard objectives remove EntitySizeH
scoreboard objectives remove ForcedDamage
scoreboard objectives remove GhostCaught
scoreboard objectives remove HomeRot
scoreboard objectives remove HomeRotX
scoreboard objectives remove HomeRotY
scoreboard objectives remove InteractionType
scoreboard objectives remove Keys
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove PrevHealth
scoreboard objectives remove PrevMusicType
scoreboard objectives remove PrevRoom
scoreboard objectives remove PrevTotalDamage
scoreboard objectives remove PunchingBag
scoreboard objectives remove RotationDif
scoreboard objectives remove RotX
scoreboard objectives remove RotY
scoreboard objectives remove TrainingOption
scoreboard objectives remove Wool
scoreboard objectives remove YellTime
scoreboard players operation #heart_money_count Selected = #heart_coin_count Selected
scoreboard players reset #heart_coin_count Selected