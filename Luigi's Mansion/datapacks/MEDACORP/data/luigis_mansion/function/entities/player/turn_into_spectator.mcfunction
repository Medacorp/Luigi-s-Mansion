gamemode spectator @s
data modify storage luigis_mansion:data current_state.current_data.dead_players append value {uuid:[I;]}
data modify storage luigis_mansion:data current_state.current_data.dead_players[-1].uuid set from entity @s UUID
tag @s add dead_player
scoreboard players set @s Offline -1