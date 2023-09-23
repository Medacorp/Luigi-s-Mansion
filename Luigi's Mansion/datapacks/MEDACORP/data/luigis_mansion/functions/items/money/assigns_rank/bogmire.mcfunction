execute if entity @s[tag=bogmire] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.rank
$execute if entity @s[tag=bogmire] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.rank set value $(rank)
scoreboard players reset #temp Time