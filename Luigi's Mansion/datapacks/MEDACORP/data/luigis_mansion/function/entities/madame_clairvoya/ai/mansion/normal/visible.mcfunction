execute if data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b,shown_marios_shoe:1b,shown_marios_letter:1b,shown_marios_star:1b,shown_marios_hat:1b} if entity @s[scores={VulnerableTime=0}] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/laugh
execute if entity @s[scores={VulnerableTime=1..}] as @a[tag=same_room] run function luigis_mansion:other/music/set/danger

execute if entity @s[tag=talk] run function luigis_mansion:entities/madame_clairvoya/ai/mansion/normal/select_dialog
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{shown_marios_glove:1b,shown_marios_shoe:1b,shown_marios_letter:1b,shown_marios_star:1b,shown_marios_hat:1b} run data remove entity @s data.animation