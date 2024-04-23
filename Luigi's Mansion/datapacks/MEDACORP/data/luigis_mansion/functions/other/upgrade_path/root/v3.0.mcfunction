execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4,memory:[],unique_id:{dancing_ghost_guy_couple:0,ghost:0,passive:0,elemental_source:0,reflection:0,ice_spikes:0},dialogs:[]}
execute if data storage luigis_mansion:data luigi_colors[-1] run function luigis_mansion:other/upgrade_path/root/convert_color_to_memory
data remove storage luigis_mansion:data luigi_colors
execute if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:other/upgrade_path/root/convert_inventory_to_memory
data remove storage luigis_mansion:data inventories
data modify storage luigis_mansion:data unique_id.ghost set from storage luigis_mansion:data ghost_nr
data remove storage luigis_mansion:data ghost_nr
data modify storage luigis_mansion:data unique_id.passive set from storage luigis_mansion:data passive_nr
data remove storage luigis_mansion:data passive_nr
data modify storage luigis_mansion:data unique_id.elemental_source set from storage luigis_mansion:data elemental_source_nr
data remove storage luigis_mansion:data elemental_source_nr
data modify storage luigis_mansion:data unique_id.reflection set from storage luigis_mansion:data reflection_nr
data remove storage luigis_mansion:data reflection_nr
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].obtained_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {obtained_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].obtained_keys merge value {parlor:1b}
data remove storage luigis_mansion:data obtained_parlor_key
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data current_state.mansion_data[].used_keys merge value {parlor:1b}
execute if data storage luigis_mansion:data {used_parlor_key:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[].used_keys merge value {parlor:1b}
data remove storage luigis_mansion:data used_parlor_key
data modify storage luigis_mansion:data current_state.current_data.lowest_difficulty set value 2
data modify storage luigis_mansion:data current_state.mansion_data[].lowest_difficulty set value 2
data modify storage luigis_mansion:data saved_state.mansion_data[].lowest_difficulty set value 2
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
scoreboard objectives remove AnimationProg
scoreboard objectives remove Attack
scoreboard objectives remove BookChoice
scoreboard objectives remove ClairvoyaChoice
scoreboard objectives remove ClairvoyaSpoke
scoreboard objectives remove ClickEventCheck
scoreboard objectives remove EGaddGallChoice
scoreboard objectives remove EGaddGPRChoice
scoreboard objectives remove EGaddLabChoice
scoreboard objectives remove EGaddTrainChoice
scoreboard objectives remove EntitySizeW
scoreboard objectives remove EntitySizeH
scoreboard objectives remove ForcedDamage
scoreboard objectives remove GBHCall
scoreboard objectives remove GBHChoice
scoreboard objectives remove GBHDialog
scoreboard objectives remove GBHDoubleUse
scoreboard objectives remove GBHWait
scoreboard objectives remove GalleryChoice
scoreboard objectives remove GhostCaught
scoreboard objectives remove HomeRot
scoreboard objectives remove HomeRotX
scoreboard objectives remove HomeRotY
scoreboard objectives remove InteractionType
scoreboard objectives remove JarvisChoice
scoreboard objectives remove Jump
scoreboard objectives remove JumpHeight
scoreboard objectives remove Keys
scoreboard objectives remove KnockbackType
scoreboard objectives remove KnockbackTime
scoreboard objectives remove MansionChoice
scoreboard objectives remove MelodyChoice
scoreboard objectives remove Owner
scoreboard objectives remove Path
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
scoreboard objectives remove PrevHealth
scoreboard objectives remove PrevMusicType
scoreboard objectives remove PrevRoom
scoreboard objectives remove PrevTotalDamage
scoreboard objectives remove PunchingBag
scoreboard objectives remove ResetChoice
scoreboard objectives remove RotationDif
scoreboard objectives remove RotX
scoreboard objectives remove RotY
scoreboard objectives remove ScareType
scoreboard objectives remove ScareTime
scoreboard objectives remove SettingsCheck
scoreboard objectives remove Toad1Choice
scoreboard objectives remove Toad2Choice
scoreboard objectives remove Toad3Choice
scoreboard objectives remove Toad4Choice
scoreboard objectives remove Toad5Choice
scoreboard objectives remove TrainingOption
scoreboard objectives remove TwinsChoice
scoreboard objectives remove Wool
scoreboard objectives remove YellTime
scoreboard players operation #heart_money_count Selected = #heart_coin_count Selected
scoreboard players reset #heart_coin_count Selected
scoreboard players reset #mansion_type Selected
scoreboard players reset #mansion_data_index Selected
scoreboard players reset #previous_mansion_index Selected
execute unless score #loaded_exterior Selected matches -1 run function luigis_mansion:room/normal/front_door