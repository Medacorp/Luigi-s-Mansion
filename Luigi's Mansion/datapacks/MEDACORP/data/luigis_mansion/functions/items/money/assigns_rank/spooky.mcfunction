execute if entity @s[tag=spooky] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.rank
$execute if entity @s[tag=spooky] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.rank set value $(rank)
scoreboard players reset #temp Time