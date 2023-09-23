execute if entity @s[tag=shivers] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.rank
$execute if entity @s[tag=shivers] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.rank set value $(rank)
scoreboard players reset #temp Time