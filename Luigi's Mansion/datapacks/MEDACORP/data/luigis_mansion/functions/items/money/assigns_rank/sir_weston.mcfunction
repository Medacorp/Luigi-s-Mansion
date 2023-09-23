execute if entity @s[tag=sir_weston] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.rank
$execute if entity @s[tag=sir_weston] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.rank set value $(rank)
scoreboard players reset #temp Time