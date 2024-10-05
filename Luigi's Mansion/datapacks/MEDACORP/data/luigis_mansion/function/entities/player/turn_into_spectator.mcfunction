gamemode spectator @s
data modify storage luigis_mansion:data current_state.current_data.dead_players append value {uuid:[I;]}
data modify storage luigis_mansion:data current_state.current_data.dead_players[-1].uuid set from entity @s UUID
function luigis_mansion:entities/player/animation/set/none
tag @s add dead_player
execute if score #can_revive Selected matches 1 run function luigis_mansion:spawn_entities/death_location