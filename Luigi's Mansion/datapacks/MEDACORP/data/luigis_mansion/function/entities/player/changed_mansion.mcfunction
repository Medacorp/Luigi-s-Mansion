scoreboard players reset @s ChangedMansion
execute if data storage luigis_mansion:data current_state.current_data.dead_players[0] as @a run function luigis_mansion:entities/player/load_health with entity @s
execute as @a[tag=revived] run function luigis_mansion:entities/player/mansion_change_revived
execute as @a[tag=killed] run function luigis_mansion:entities/player/mansion_change_killed
execute as @a unless entity @s[scores={Room=..-1}] run function luigis_mansion:room/underground_lab/warp_to