execute if entity @s[tag=jarvis] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.jarvis.rank
$execute if entity @s[tag=jarvis] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.jarvis.rank set value $(rank)
scoreboard players reset #temp Time