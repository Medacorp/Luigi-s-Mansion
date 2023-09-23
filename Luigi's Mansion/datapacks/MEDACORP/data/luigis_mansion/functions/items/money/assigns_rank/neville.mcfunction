execute if entity @s[tag=neville] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville.rank
$execute if entity @s[tag=neville] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville.rank set value $(rank)
scoreboard players reset #temp Time