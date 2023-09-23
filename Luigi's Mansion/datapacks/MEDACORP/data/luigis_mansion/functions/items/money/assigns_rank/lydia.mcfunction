execute if entity @s[tag=lydia] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.lydia.rank
$execute if entity @s[tag=lydia] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.lydia.rank set value $(rank)
scoreboard players reset #temp Time