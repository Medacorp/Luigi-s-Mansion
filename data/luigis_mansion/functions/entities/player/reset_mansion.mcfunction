scoreboard players set * ResetMansion
execute as @a run function luigis_mansion:other/load_data/reset_mansion_data
execute if block 771 97 2 minecraft:soul_fire run function luigis_mansion:entities/e_gadd/load_exterior/empty
scoreboard players set #mansion_type Selected -1
scoreboard players set #mansion_data_index Selected -1
scoreboard players set #previous_mansion_index Selected -1
data modify storage luigis_mansion:data current_state.current_data set value {}