execute if entity @s[tag=nana] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.rank
$execute if entity @s[tag=nana] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.rank set value $(rank)
scoreboard players reset #temp Time